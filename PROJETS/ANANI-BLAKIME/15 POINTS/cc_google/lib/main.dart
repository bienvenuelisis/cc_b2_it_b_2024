import 'package:cc_google/home/screens/google_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const GOOGLEINTERFACE());
}

class GOOGLEINTERFACE extends StatelessWidget {
  const GOOGLEINTERFACE({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GOOGLE",
      home: GoogleScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
