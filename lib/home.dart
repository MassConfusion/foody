import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foody'),
      ),
      body: Scrollbar(
        child: ListView(
          restorationId: 'foody_main_menu_list_view',
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            ListTile(
              leading: const CircleAvatar(child: Text('P')),
              title: const Text("Pantry"),
              subtitle: const Text("Track your foods here."),
              onTap: () => Navigator.of(context).pushNamed('/pantry'),
            ),
            ListTile(
              leading: const CircleAvatar(child: Text('R')),
              title: const Text("Recipes"),
              subtitle: const Text("Time to cook up something delicius."),
              onTap: () => Navigator.of(context).pushNamed('/recipes'),
            ),
            ListTile(
              leading: const CircleAvatar(child: Text('S')),
              title: const Text("Shopping lists"),
              subtitle: const Text("Things to buy next time you go shopping"),
              onTap: () => Navigator.of(context).pushNamed('/shopping_lists'),
            ),
          ],
        ),
      ),
    );
  }
}
