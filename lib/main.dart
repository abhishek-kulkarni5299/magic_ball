import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(
            child: Text('Ask me anything'),
          ),
        ),
        body: MagicBall(),
        backgroundColor: Colors.teal[200],
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {

  int magicBall = 1;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  magicBall = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                  'images/ball$magicBall.png'
              ),
            ),
          ),

        ],

      ),
    );
  }
}



