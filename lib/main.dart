import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    var value;
    void _randValue() {
      setState(() {
        for (var i = 0; i < 10; i++) {
          value = rng.nextInt(100);
        }
      });
    }

    return MaterialApp(
      title: 'Random Number Generator',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Random Number Generator',
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Text(
                '$value',
                style: TextStyle(color: Colors.blueGrey, fontSize: 24.0),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _randValue,
          tooltip: 'Generate random numbers',
          child: Icon(Icons.replay),
        ),
      ),
    );
  }
}
