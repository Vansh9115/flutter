import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundtrack){
    final player=AudioCache();
    player.play('note$soundtrack.wav');

  }

  Expanded buildKey({int soundNumber, Color color}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             buildKey(color:Colors.red,soundNumber:1),
              buildKey(color: Colors.green,soundNumber:2 ),
              buildKey(color: Colors.blueAccent,soundNumber:3),
              buildKey(color: Colors.yellowAccent,soundNumber:4 ),
              buildKey(color: Colors.orange,soundNumber:5 ),
              buildKey(color: Colors.lightBlueAccent,soundNumber:6),
              buildKey(color: Colors.brown,soundNumber:7 ),
            ],
          ),
          )
          ),
        );


  }
}
