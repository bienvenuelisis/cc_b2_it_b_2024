
Import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculatrice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculatrice'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.bottomRight,
              child: Text(
                '1080',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: null,
                child: Text('AC'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('%'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('÷'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: null,
                child: Text('7'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('8'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('9'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('X'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: null,
                child: Text('4'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('5'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('6'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('-'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: null,
                child: Text('1'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('2'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('3'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('+'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: null,
                child: Text('0'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('.'),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('='),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
