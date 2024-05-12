import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Translate App',
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
  final _controller = TextEditingController();
  String _selectedLanguage = 'English';
  String _translatedText = '';

  void _translateText() {
    
    setState(() {
      _translatedText = 'Translated Text'; // Texte traduit par défaut
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translate App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Enter text to translate',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                DropdownButton<String>(
                  value: _selectedLanguage,
                  items: [
                    DropdownMenuItem<String>(
                      value: 'English',
                      child: Text('English'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Spanish',
                      child: Text('Spanish'),
                    ),
                    
                  ],
                  onChanged: (String newValue) {
                    setState(() {
                      _selectedLanguage = newValue;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: _translateText,
                  child: Text('Translate'),
                ),
              ],
            ),
            SizedBox(height: 32),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  _translatedText,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}