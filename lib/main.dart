import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playsound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded newkey({Color color, int sound}) {
    return Expanded(
      child: FlatButton(
        
        onPressed: () {
          playsound(sound);
        },
        child: Container(width: double.infinity, color: color),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              newkey(color: Colors.red, sound: 1),
              newkey(color: Colors.grey, sound: 2),
              newkey(color: Colors.orange, sound: 3),
              newkey(color: Colors.blue, sound: 4),
              newkey(color: Colors.green, sound: 5),
              newkey(color: Colors.yellow, sound: 6),
              newkey(color: Colors.purple, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
