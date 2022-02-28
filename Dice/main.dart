import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('DICE'),centerTitle: true,),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({ Key? key }) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left=1;
  int right=2;
  void changeface(){
    setState(() {
      left=Random().nextInt(6)+1;
      right=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent
              ),
              child: Image.asset('images/dice$left.png'),
              onPressed: (){
                changeface();
              },
            ),
          ),

          Expanded(
            flex: 2,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent
              ),
              child: Image.asset('images/dice$right.png'),
              onPressed: (){
                changeface();
              },
            ),
          ),
        ],
    )
    );
  }
  }