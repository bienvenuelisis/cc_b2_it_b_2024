import 'package:cc_pouli_kobona/features/message/screens/message_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Message());
}

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Message",
      home: MessageScreen(),
      debugShowCheckedModeBanner: false,
      );
  }
}
