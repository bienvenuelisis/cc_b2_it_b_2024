import 'package:cc_app/features/home/screens/messagescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiscApp());
}

class DiscApp extends StatelessWidget {
  const DiscApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MessagePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
