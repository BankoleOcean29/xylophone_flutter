import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  static AudioCache player = AudioCache();

  void playSound(int soundNumber){
    player.play('note$soundNumber.wav');
  }

  Expanded buildXylo(int soundNumber, Color color) {
    return Expanded(
      child: ElevatedButton(onPressed: () {playSound(soundNumber);},
          child: Text(''), style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(color))),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildXylo(1, Colors.green),
            buildXylo(2, Colors.red),
            buildXylo(3, Colors.blue),
            buildXylo(4, Colors.white),
            buildXylo(5, Colors.orange),
            buildXylo(6, Colors.brown),
            buildXylo(7, Colors.deepPurple),
          ]),
        ),
      ),
    );
  }
}

