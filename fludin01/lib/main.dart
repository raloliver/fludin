import 'package:flutter/material.dart';

// the main function is the starting point for all our flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: Text('I am rich!'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/corn.png'),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
