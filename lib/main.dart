import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                _BuildKey(color: Colors.red, numberSound: 1),
                _BuildKey(color: Colors.orange, numberSound: 2),
                _BuildKey(color: Colors.yellow, numberSound: 3),
                _BuildKey(color: Colors.greenAccent, numberSound: 4),
                _BuildKey(color: Colors.green, numberSound: 5),
                _BuildKey(color: Colors.blue, numberSound: 6),
                _BuildKey(color: Colors.purple, numberSound: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BuildKey extends StatelessWidget {
  final Color color;
  final int numberSound;

  const _BuildKey({this.color, this.numberSound});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(color: color),
        onTap: () {
          playSound(numberSound);
        },
      ),
    );
  }

  void playSound(int soundNumber) {
    final AudioCache player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
