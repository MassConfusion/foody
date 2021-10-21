import 'package:flutter/material.dart';
import 'package:foody/constant.dart';
import 'package:foody/home.dart';
import 'package:foody/pantry.dart';
import 'package:foody/recipes.dart';
import 'package:foody/shopping_lists.dart';

void main() => runApp(const FoodyApp());

class FoodyApp extends StatelessWidget {
  const FoodyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      initialRoute: homeRoute,
      routes: {
        homeRoute: (context) => const Home(),
        pantryRoute: (context) => const Pantry(),
        recipesRoute: (context) => const Recipes(),
        shoppingListsRoute: (context) => const ShoppingLists(),
      },
    );
  }
}
