import 'package:flutter/material.dart';

class GoogleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Icon(Icons.home),
                ),
                Expanded(child: SizedBox()),
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 16.0),
                      Icon(Icons.notifications),
                      SizedBox(width: 16.0),
                      Icon(Icons.person),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(
                'GOOGLE',
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.green,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.red,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.settings),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: double.infinity,
                    height: 200.0,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
