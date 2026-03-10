import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class lab5 extends StatelessWidget {
  const lab5({super.key});

  

  void playSound(int note) async {
  // 2. Use Source as a wrapper or call play directly depending on your version
    AudioCache player = AudioCache(); 
    await player.play('note$note.wav');
  }
  Expanded buildKey(Color color,int note){
    return Expanded(
      child: TextButton(
        style:TextButton.styleFrom(backgroundColor: color),
        onPressed:(){playSound(note);}, 
        child: const Text("Xylophone",
        style: TextStyle(color:Colors.blue),),),
      );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          buildKey(Colors.red,1),
          buildKey(Colors.yellow,2),
          buildKey(Colors.green,3),
          buildKey(Colors.lightGreen,4),
          buildKey(Colors.orange,5),
          buildKey(Colors.red,6),
          buildKey(Colors.blue,7),
        ],
      ),),
    );
  }
}