import 'package:flutter/material.dart';
import 'package:foody/constant.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(homeTitle),
      ),
      body: Scrollbar(
        child: ListView(
          restorationId: homeRestorationId,
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            ListTile(
              leading: const CircleAvatar(child: Text(pantryAvatarText)),
              title: const Text(pantryTitle),
              subtitle: const Text(pantrySubtitle),
              onTap: () => Navigator.of(context).pushNamed(pantryRoute),
            ),
            ListTile(
              leading: const CircleAvatar(child: Text(recipesAvatarText)),
              title: const Text(recipesTitle),
              subtitle: const Text(recipesSubtitle),
              onTap: () => Navigator.of(context).pushNamed(recipesRoute),
            ),
            ListTile(
              leading: const CircleAvatar(child: Text(shoppingListsAvatarText)),
              title: const Text(shoppingListsTitle),
              subtitle: const Text(shoppingListsSubtitle),
              onTap: () => Navigator.of(context).pushNamed(shoppingListsRoute),
            ),
          ],
        ),
      ),
    );
  }
}
