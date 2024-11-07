import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    Widget textSection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        '${itemArgs.name} sangat enak dan lezat. Cocok untuk makan siang atau malam. ',
        softWrap: true,
      ),
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    itemArgs.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star, color: Colors.red,
          ),
          Text('${itemArgs.rating}'),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: ListView(
          children: [
            Image.asset(
              itemArgs.photo,
              width: 600,
              height: 300,
              fit: BoxFit.cover,
            ),
            titleSection,
            textSection
          ],
        ),
    );
  }
}
