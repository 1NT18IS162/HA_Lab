
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Xylophone",
      home: SafeArea(
        child: Xylo(),)
       
    
    );
    
  }
}

class Xylo extends StatefulWidget {
  const Xylo({ Key? key }) : super(key: key);

  @override
  _XyloState createState() => _XyloState();
}

class _XyloState extends State<Xylo> {
  void playAudio(int i){
    final playSound = AudioCache();
    playSound.play('note$i.wav');
  }

  Expanded musicTile(int i,Color c){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: c
        ),
        onPressed: (){
          playAudio(i);
        },
        child: const Text(""),
      )
      );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        musicTile(1, Colors.red),
        musicTile(2, Colors.orange),
        musicTile(3, Colors.yellow),
        musicTile(4, Colors.green),
        musicTile(5, Colors.blue),
        musicTile(6, Colors.indigo),
        musicTile(7, Colors.purple),
      ],
    );
  }
}