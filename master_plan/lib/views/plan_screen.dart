import 'package:flutter/material.dart';
import '../models/data_layer.dart';
import '../provider/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  final String planName; // Nama Plan untuk diakses
  const PlanScreen({super.key, required this.planName});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).unfocus();
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(widget.planName)),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          final currentPlan = plans.firstWhere(
            (p) => p.name == widget.planName,
            orElse: () => Plan(name: '', tasks: []),
          );

          if (currentPlan.name.isEmpty) {
            return Center(child: Text("Plan not found"));
          }

          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(child: Text(currentPlan.completnessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    final planNotifier = PlanProvider.of(context);

    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        final currentPlan = planNotifier.value.firstWhere(
          (p) => p.name == widget.planName,
          orElse: () => Plan(name: '', tasks: []),
        );

        if (currentPlan.name.isNotEmpty) {
          List<Task> updatedTasks = [...currentPlan.tasks, const Task()];
          planNotifier.value = planNotifier.value.map((p) {
            if (p.name == currentPlan.name) {
              return Plan(name: p.name, tasks: updatedTasks);
            }
            return p;
          }).toList();
        }
      },
    );
  }

  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index, context),
    );
  }

  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    final planNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          final currentPlan = planNotifier.value.firstWhere(
            (p) => p.name == widget.planName,
            orElse: () => Plan(name: '', tasks: []),
          );

          if (currentPlan.name.isNotEmpty) {
            List<Task> updatedTasks = [...currentPlan.tasks];
            updatedTasks[index] = Task(
              description: task.description,
              complete: selected ?? false,
            );

            planNotifier.value = planNotifier.value.map((p) {
              if (p.name == currentPlan.name) {
                return Plan(name: p.name, tasks: updatedTasks);
              }
              return p;
            }).toList();
          }
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          final currentPlan = planNotifier.value.firstWhere(
            (p) => p.name == widget.planName,
            orElse: () => Plan(name: '', tasks: []),
          );

          if (currentPlan.name.isNotEmpty) {
            List<Task> updatedTasks = [...currentPlan.tasks];
            updatedTasks[index] = Task(
              description: text,
              complete: task.complete,
            );

            planNotifier.value = planNotifier.value.map((p) {
              if (p.name == currentPlan.name) {
                return Plan(name: p.name, tasks: updatedTasks);
              }
              return p;
            }).toList();
          }
        },
      ),
    );
  }
}
