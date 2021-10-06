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
          children: const [
            ListTile(
              leading: CircleAvatar(child: Text('P')),
              title: Text("Pantry"),
              subtitle: Text("Track your foods here."),
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('R')),
              ),
              title: Text("Recipes"),
              subtitle: Text("Time to cook up something delicius."),
            ),
            ListTile(
              leading: ExcludeSemantics(
                child: CircleAvatar(child: Text('S')),
              ),
              title: Text("Shopping lists"),
              subtitle: Text("Things to buy next time you go shopping"),
            ),
          ],
        ),
      ),
    );
  }
}
