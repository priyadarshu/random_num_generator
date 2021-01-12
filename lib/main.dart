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
    Random rng = new Random();
    int randomNumber;
    void _randValue() {
      setState(() {
        randomNumber = rng.nextInt(100);
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
                '$randomNumber',
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

// import 'dart:math';

// void main() {
//   Random random = new Random();
//   int randomNumber = random.nextInt(100);
//   print(randomNumber);
// }
