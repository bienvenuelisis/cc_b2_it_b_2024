import 'package:flutter/material.dart';
import 'package:favor_app/screens/favor_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favor App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FavorListScreen(),
    );
  }
}

