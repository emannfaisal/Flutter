import 'package:flutter/material.dart';
import 'main2.dart';
import 'main4.dart';
import 'main3.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: lab5(),   // 👈 Change this to Task2() when needed
    );
  }
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Container(
          width: 250,
          height: 250,
          margin: const EdgeInsets.all(25.0),
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          color: Colors.amber,
          child: const Center(
            child: Text(
              'Safe Container',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Icon(Icons.favorite, size: 40),
              SizedBox(height: 60), // Spacer
              Icon(Icons.thumb_up, size: 40),
              Icon(Icons.share, size: 40),
            ],
          ),
        ),
      ),
    );
  }
}
class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Container(
          height: 200, // Important so stretch effect is visible
          color: Colors.blueGrey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Icon(Icons.volume_up, size: 40),
              Icon(Icons.bluetooth, size: 40),
              Icon(Icons.wifi, size: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class Task4 extends StatelessWidget{
  const Task4({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text("header", style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 80,
                  height: 50,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
void main(){
  runApp(const MyApp());
}