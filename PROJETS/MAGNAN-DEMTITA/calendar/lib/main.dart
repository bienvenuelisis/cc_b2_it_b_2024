import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Invitation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EventInvitation(),
    );
  }
}

class EventInvitation extends StatefulWidget {
  @override
  _EventInvitationState createState() => _EventInvitationState();
}

class _EventInvitationState extends State<EventInvitation> {
  String response = '';

  void respond(String answer) {
    setState(() {
      response = answer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brainstorming Magenta Project'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Participants come together to generate innovative ideas and solutions for a project associated with the color magenta.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20),
            Text(
              'More Details',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Date\nWed, 25 Oct 2023',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10),
            Text(
              'Time\n09:30 AM - 11:30 AM',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10),
            Text(
              'Platform\nGoogle Meet',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10),
            Text(
              'Reminders\n1 Hour Before',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20),
            Text(
              'Guests (5 Participants)',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            // Ici, vous pouvez ajouter une liste de participants
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    respond('Yes');
                  },
                  child: Text('Yes, Attend'),
                ),
                RaisedButton(
                  onPressed: () {
                    respond('No');
                  },
                  child: Text('No'),
                ),
                RaisedButton(
                  onPressed: () {
                    respond('Maybe');
                  },
                  child: Text('Maybe'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Your Response: $response',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
