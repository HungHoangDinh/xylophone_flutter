import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int a){
    final player = AudioPlayer();
    player.play(AssetSource('note$a.wav'));
  }
  Widget block(int a,Color color){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(a);
        },
        child: Container(color: color, width: double.infinity),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(

            children: [
             block(1,Colors.red),
              block(2,Colors.blue),
              block(3,Colors.green),
              block(4,Colors.orange),
              block(5,Colors.brown),
              block(6,Colors.yellow),
              block(7,Colors.teal)
            ],
          ),
        ),
      ),
    );
  }
}