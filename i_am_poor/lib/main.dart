import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text('I am Poor'),
        ),
        backgroundColor: Colors.teal[50],
        body: Center(
          child: Image(
            image: AssetImage('images/square.png'),
          ),
        ),
      ),
    ),
  );
}
