import 'package:flutter/material.dart';
import 'package:foody/constant.dart';

class Pantry extends StatefulWidget {
  const Pantry({Key? key}) : super(key: key);

  @override
  PantryState createState() => PantryState();
}

class PantryState extends State<Pantry> {
  // TODO: create food db entity
  final foodList = <String>[];
  final TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(pantryTitle)),
      body: ListView(
        restorationId: pantryRestorationId,
        children: getFoodItems(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => displayDialog(context),
        tooltip: floatingButtonTooltip,
      ),
    );
  }

  void addFoodItem(String food) {
    setState(() {
      foodList.add(food);
    });
    textFieldController.clear();
  }

  Widget buildFoodItem(String food) {
    return ListTile(title: Text(food));
  }

  List<Widget> getFoodItems() {
    final foodWidgets = <Widget>[];
    for (String food in foodList) {
      foodWidgets.add(buildFoodItem(food));
    }
    return foodWidgets;
  }

  Future<AlertDialog?> displayDialog(BuildContext context) async {
    return showDialog<AlertDialog>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(dialogTitle),
            content: TextField(
              controller: textFieldController,
              decoration: const InputDecoration(hintText: dialogHint),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  addFoodItem(textFieldController.text);
                },
                child: const Text(dialogActionAdd),
                autofocus: true,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(dialogActionCancel),
              ),
            ],
          );
        });
  }
}
