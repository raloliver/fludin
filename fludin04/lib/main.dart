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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playButton(1);
                  },
                  color: Colors.lightBlueAccent,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playButton(2);
                  },
                  color: Colors.lightGreenAccent,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playButton(3);
                  },
                  color: Colors.greenAccent,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playButton(4);
                  },
                  color: Colors.yellowAccent,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playButton(5);
                  },
                  color: Colors.orangeAccent,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playButton(6);
                  },
                  color: Colors.redAccent,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    playButton(7);
                  },
                  color: Colors.pinkAccent,
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
