import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarm Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TimeOfDay _selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alarm Clock'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Time:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            TimeOfDayPicker(
              initialTime: _selectedTime,
              selectedTime: (TimeOfDay newTime) {
                setState(() {
                  _selectedTime = newTime;
                });
              },
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                
                print('Alarm set for ${_selectedTime}');
              },
              child: Text('Set Alarm'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 40),
                padding: EdgeInsets.all(12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}