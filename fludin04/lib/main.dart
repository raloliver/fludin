import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playButton(int noteNumber) {
    final audioCache = AudioCache();
    audioCache.play('note$noteNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  playButton(1);
                },
                color: Colors.lightBlueAccent,
              ),
              FlatButton(
                onPressed: () {
                  playButton(2);
                },
                color: Colors.lightGreenAccent,
              ),
              FlatButton(
                onPressed: () {
                  playButton(3);
                },
                color: Colors.greenAccent,
              ),
              FlatButton(
                onPressed: () {
                  playButton(4);
                },
                color: Colors.yellowAccent,
              ),
              FlatButton(
                onPressed: () {
                  playButton(5);
                },
                color: Colors.orangeAccent,
              ),
              FlatButton(
                onPressed: () {
                  playButton(6);
                },
                color: Colors.redAccent,
              ),
              FlatButton(
                onPressed: () {
                  playButton(7);
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
