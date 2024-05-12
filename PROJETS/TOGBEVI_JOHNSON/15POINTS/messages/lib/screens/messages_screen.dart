import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messages/state_tools/bottom_navigation_bar.dart';
import 'package:messages/state_tools/searchbar.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
          ),
          Positioned(
            top: 0,
            child: Container(
              child: Text(
                'Messages',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
          Positioned(top: 30, child: search()),
          Positioned(
              top: 30,
              child: ListView(
                children: [
                  discussionRow('Sarah', 'Coucou...', '14h30', '2'),
                  discussionRow('Sarah', 'Coucou...', '14h30', '2'),
                  discussionRow('Sarah', 'Coucou...', '14h30', '2'),
                  discussionRow('Sarah', 'Coucou...', '14h30', '2'),
                  discussionRow('Sarah', 'Coucou...', '14h30', '2'),
                ],
              ))
        ],
      ),
      bottomNavigationBar: AppBottomNavigationBar(),
    );
  }
}

class discussionRow extends StatelessWidget {
  String name;
  String messageBrief;
  String hour;
  String notification;
  discussionRow(this.name, this.messageBrief, this.hour, this.notification);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //image
          Column(
            children: [
              // SizedBox(
              //   child: Image.asset(' '),

              // ),
              Text(
                '$name',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '$messageBrief',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '$hour',
                style: TextStyle(color: Color.fromARGB(255, 0, 76, 139)),
              ),
              Text(
                '$notification',
                style: TextStyle(color: Color.fromARGB(255, 0, 76, 139)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
