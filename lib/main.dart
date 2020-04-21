import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MusicApp());

class MusicApp extends StatefulWidget {
  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  void playsong(int n){
   final layer = AssetsAudioPlayer();
      layer.open('assets/note$n.wav');
  }

  Expanded fun({Color color,int i}){
     return Expanded(
          child: FlatButton(
              color: color,
              onPressed:(){
                setState(() {
                  playsong(i);
                });
              } ,
              child:null,
            ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              fun(color: Colors.purpleAccent , i:1),
              fun(color: Colors.red, i:2),
              fun(color: Colors.greenAccent,i:3),
              fun(color: Colors.teal , i:4),
              fun(color: Colors.yellow , i:5),
              fun(color: Colors.deepOrange, i:6),
              fun(color: Colors.brown, i:7),
            ], 
        ),
      ),
    );
  }
}