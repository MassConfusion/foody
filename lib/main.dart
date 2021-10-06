import 'package:flutter/material.dart';
import './home.dart';

void main() => runApp(const FoodyApp());

class FoodyApp extends StatelessWidget {
  const FoodyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Foody',
      home: Home(),
    );
  }
}
