import 'package:flutter/material.dart';
import 'package:foody/constant.dart';

class ShoppingLists extends StatefulWidget {
  const ShoppingLists({Key? key}) : super(key: key);

  @override
  ShoppingListsState createState() => ShoppingListsState();
}

class ShoppingListsState extends State<ShoppingLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(shoppingListsTitle)),
      body: ListView(
        restorationId: shoppingListsRestorationId,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => {},
      ),
    );
  }
}
