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
  final List<Map<String, String>> _alarms = [
    {'time': '6:30 am', 'frequency': 'Daily'},
    {'time': '8:00 pm', 'frequency': 'Daily'},
    {'time': '10:00 am', 'frequency': 'Once'},
    {'time': '12:30 pm', 'frequency': 'Once'},
    {'time': '7:00 am', 'frequency': 'Daily'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alarm Clock'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _alarms.length,
              itemBuilder: (context, index) {
                return AlarmItem(
                  time: _alarms[index]['time']!,
                  frequency: _alarms[index]['frequency']!,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Add a new alarm
                setState(() {
                  _alarms.add({
                    'time': 'New Time',
                    'frequency': 'Daily',
                  });
                });
              },
              child: Text('+'),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlarmItem extends StatelessWidget {
  final String time;
  final String frequency;

  const AlarmItem({Key? key, required this.time, required this.frequency})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(time),
          Text(frequency),
        ],
      ),
    );
  }
}
