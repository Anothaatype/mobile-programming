import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Center(
        child: Text(
          'Price: Rp ${item.price}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
