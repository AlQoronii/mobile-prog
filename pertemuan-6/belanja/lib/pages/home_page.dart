import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(name: 'Ayam Geprek', price: 15000, photo: 'images/ayamgeprek.jpeg', stock: 10, rating: 4.5),
      Item(name: 'Ayam Bakar', price: 13000, photo: 'images/ayambakar.jpeg', stock: 15, rating: 4.0),
      Item(name: 'Steak Ayam :D', price: 21000, photo: 'images/steakayam.jpeg', stock: 5, rating: 4.8),
      Item(name: 'Sate Ayam', price: 12000, photo: 'images/sateayam.jpeg', stock: 20, rating: 4.2),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/item', arguments: item);
                    },
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Hero(
                                tag: item.name, // Unique tag for each item
                                child: Image.asset(
                                  item.photo,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(item.name, style: const TextStyle(fontWeight: FontWeight.w500)),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber, size: 16),
                                    Text(
                                      item.rating.toString(),
                                      style: const TextStyle(fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(width: 4), // Spasi antara rating dan ikon
                                    // Ikon Bintang
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Rp ${item.price}'),
                                Text('Stok: ${item.stock}'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.blue,
            child: const Text(
              'Muhammad Fathurrozak Al Qoroni | 2241720109',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}



class DetailScreen extends StatelessWidget {
  final int index;
  DetailScreen({super.key, required this.index});
  final List<Item> items = [
    Item(name: 'Ayam Geprek', price: 15000, photo: 'images/ayamgeprek.jpeg', stock: 10, rating: 4.5),
    Item(name: 'Ayam Bakar', price: 13000, photo: 'images/ayambakar.jpeg', stock: 15, rating: 4.0),
    Item(name: 'Steak Ayam :D', price: 21000, photo: 'images/steakayam.jpeg', stock: 5, rating: 4.8),
    Item(name: 'Sate Ayam', price: 12000, photo: 'images/sateayam.jpeg', stock: 20, rating: 4.2),
  ];

  @override
  Widget build(BuildContext context) {
    final item = items[index];
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Image.asset(
            item.photo,
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
