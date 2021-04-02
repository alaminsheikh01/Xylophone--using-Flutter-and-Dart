import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

void playSoud(int soundNumber) {
  final player = AudioCache();
  player.play("note$soundNumber.wav");
}

Expanded buildKey({Color color, int soundNumber}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSoud(soundNumber);
      },
      child: Text("Click me"),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.blue, soundNumber: 2),
              buildKey(color: Colors.green, soundNumber: 3),
              buildKey(color: Colors.yellow, soundNumber: 4),
            ],
          ),
        ),
      ),
    );
  }
}
