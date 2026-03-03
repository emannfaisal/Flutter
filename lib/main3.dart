import 'package:flutter/material.dart';

class Lab4 extends StatefulWidget {
  const Lab4({super.key});

  @override
  State<Lab4> createState() => _Lab4State();
}

class _Lab4State extends State<Lab4> {
  bool isFollowed = false;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body:
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/pic_profie.jpg"),
              ),
            ),
            Text(
              'Name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Title',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: double.infinity,

                      ),
                    ),
                  ),
                ),
              ],
            ),
          ElevatedButton(onPressed:() {
              setState(() {
                isFollowed = !isFollowed;
              });
            },
            child: Text(isFollowed ? "Unfollow" : "Follow"),
            ),
            IconButton(onPressed: (){setState(() {
              score+=1;
            });}, icon: Icon(Icons.thumb_up, color: Colors.blue)),
            Card(
              elevation: 4,
              shadowColor: Colors.grey,
              child: Column(
                children: [
                  Text("Score: $score", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("John Doe"),
                    subtitle: Text("Software Engineer"),
                  ),
                ],
              ),
            ),
          ],

        ),

      ),

    );
  }
}