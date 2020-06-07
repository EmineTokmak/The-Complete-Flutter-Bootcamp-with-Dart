import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  void playSounds(int soundsNumber) {
    final player = new AudioCache();
    player.play('note$soundsNumber.wav');
  }

  Expanded BuildKey({Color color, int soundNumber}) {
    return Expanded(
        child: FlatButton(
            color: color,
            onPressed: () {
              playSounds(soundNumber);
            }));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildKey(color: Colors.red, soundNumber: 1),
              BuildKey(color: Colors.blue, soundNumber: 2),
              BuildKey(color: Colors.green, soundNumber: 3),
              BuildKey(color: Colors.greenAccent, soundNumber: 4),
              BuildKey(color: Colors.yellowAccent, soundNumber: 5),
              BuildKey(color: Colors.lime, soundNumber: 6),
              BuildKey(color: Colors.orangeAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
