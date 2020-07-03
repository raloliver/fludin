import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playButton(int noteNumber) {
    final audioCache = AudioCache();
    audioCache.play('note$noteNumber.wav');
  }

  Expanded builderButton({int note, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playButton(note);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              builderButton(note: 1, color: Colors.lightBlueAccent),
              builderButton(note: 2, color: Colors.lightGreenAccent),
              builderButton(note: 3, color: Colors.greenAccent),
              builderButton(note: 4, color: Colors.yellowAccent),
              builderButton(note: 5, color: Colors.orangeAccent),
              builderButton(note: 6, color: Colors.redAccent),
              builderButton(note: 7, color: Colors.pinkAccent),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
