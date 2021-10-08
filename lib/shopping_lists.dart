import 'package:flutter/material.dart';

class ShoppingLists extends StatefulWidget {
  const ShoppingLists({Key? key}) : super(key: key);

  @override
  ShoppingListsState createState() => ShoppingListsState();
}

class ShoppingListsState extends State<ShoppingLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ShoppingLists')),
      body: ListView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => {},
      ),
    );
  }
}
