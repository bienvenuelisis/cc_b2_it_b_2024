import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign.dart';

void main() {
  runApp(const NetflixCloneApp());
}

class NetflixCloneApp extends StatelessWidget {
  const NetflixCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Netflix Clone",
      home: Signup(),
      debugShowCheckedModeBanner: false,
    );
  }
}
