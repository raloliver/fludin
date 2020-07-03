import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  final audioCache = AudioCache();
                  audioCache.play('note1.wav');
                },
                color: Colors.lightBlueAccent,
              ),
              FlatButton(
                onPressed: () {
                  final audioCache = AudioCache();
                  audioCache.play('note2.wav');
                },
                color: Colors.lightGreenAccent,
              ),
              FlatButton(
                onPressed: () {
                  final audioCache = AudioCache();
                  audioCache.play('note3.wav');
                },
                color: Colors.greenAccent,
              ),
              FlatButton(
                onPressed: () {
                  final audioCache = AudioCache();
                  audioCache.play('note4.wav');
                },
                color: Colors.yellowAccent,
              ),
              FlatButton(
                onPressed: () {
                  final audioCache = AudioCache();
                  audioCache.play('note5.wav');
                },
                color: Colors.orangeAccent,
              ),
              FlatButton(
                onPressed: () {
                  final audioCache = AudioCache();
                  audioCache.play('note6.wav');
                },
                color: Colors.redAccent,
              ),
              FlatButton(
                onPressed: () {
                  final audioCache = AudioCache();
                  audioCache.play('note7.wav');
                },
                color: Colors.pinkAccent,
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
