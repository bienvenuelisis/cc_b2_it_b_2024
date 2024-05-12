import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message"),
      ),
      body: Column(
        children: [
          const SizedBox(
              height: 30,
            ),
            Row(
      children: [
        Container(
            padding: const EdgeInsets.only(left: 4),
            height: 35,
            child: Stack(
              children: [
                TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 140, 140, 140)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 93, 93, 93)),
                          borderRadius: BorderRadius.circular(15.0)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      fillColor: const Color.fromARGB(255, 61, 61, 61),
                      filled: true,
                      labelStyle: const TextStyle(color: Colors.white),
                      contentPadding: const EdgeInsets.only(left: 25),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 94, 94, 94),
                      ),
                      hintText: 'Search',
                    ),),
              ],
            )),
      ],
    )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.black),
                ),

                BottomNavigationBarItem(
                  label: 'Message',
                  icon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black),
                ),

                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.message,
                      size: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                 ),
                ),

                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.black),
                ),
                
              ]),
    );
  }
}