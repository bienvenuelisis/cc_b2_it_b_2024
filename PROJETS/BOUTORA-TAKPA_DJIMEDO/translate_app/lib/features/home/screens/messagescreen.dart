import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});
  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          child: Row(
            children: [
              Image.asset(
                'assets/images/ggtrslt.png',
                width: 70,
              ),
              Container(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Google Translate',
                      style: TextStyle(color: Colors.grey, fontSize: 25),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 58),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Row(
        children: [
          Container(
            height: 220,
            width: 230,
            color: Colors.white,
            child: Card(
              color: Colors.white,
              child: Image.asset('assets/images/tt.png'),
            ),
          ),
          Row(
            children: [
              Container(
                height: 210,
                width: 220,
                color: Colors.white,
                child: Card(
                  color: Colors.white,
              child: Image.asset('assets/images/tt.png'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 220,
                width: 230,
                color: Colors.white,
                child: Card(
                  color: Colors.white,
              child: Image.asset('assets/images/tt.png'),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 220,
                    width: 230,
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 30),
                    child: Card(
                      color: Colors.white,
                      child: Image.asset('assets/images/tt.png'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
