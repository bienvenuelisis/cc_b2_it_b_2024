import 'package:flutter/material.dart';
import 'package:messages/screens/messages_screen.dart';

void main() {
  runApp(MessagesPage());
}

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Messages",
      home: MessagesScreen(),
    );
  }
}
