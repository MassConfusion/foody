import 'package:flutter/material.dart';
import 'package:foody/pantry.dart';
import 'package:foody/recipes.dart';
import 'package:foody/shopping_lists.dart';
import './home.dart';

void main() => runApp(const FoodyApp());

class FoodyApp extends StatelessWidget {
  const FoodyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foody',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/pantry': (context) => const Pantry(),
        '/recipes': (context) => const Recipes(),
        '/shopping_lists': (context) => const ShoppingLists(),
      },
    );
  }
}
