import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var left = 1;
    var right = 1;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () => {},
              child: Image.asset('images/dice$left.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () => {},
              child: Image.asset('images/dice$right.png'),
            ),
          ),
        ],
      ),
    );
  }
}
