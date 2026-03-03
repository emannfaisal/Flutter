import 'package:flutter/material.dart';

class Task5 extends StatelessWidget {
  const Task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tasks"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage("assets/pic_profie.jpg"),
              backgroundColor: Colors.blue,
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 255, 254, 243),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ---------------- Task 1 Section ----------------
              Card(
                color: Colors.orange,
                elevation: 2,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star, size: 30, color: Colors.blue),
                      Icon(Icons.favorite, size: 30, color: Colors.red),
                      Icon(Icons.thumb_up, size: 30, color: Colors.green),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Card(
                color: Colors.deepOrange,
                elevation: 6,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star, size: 30, color: Colors.cyan),
                      Icon(Icons.favorite, size: 30, color: Colors.teal),
                      Icon(Icons.thumb_up, size: 30, color: Colors.blue),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Card(
                color: Color.fromARGB(255, 234, 240, 188),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star, size: 30, color: Colors.amber),
                      Icon(Icons.favorite, size: 30, color: Colors.brown),
                      Icon(Icons.thumb_up, size: 30, color: Colors.orange),
                    ],
                  ),
                ),
              ),

              const Divider(thickness: 5),

              const Text("Task 2"),

              const SizedBox(height: 20),

              Container(
                color: Colors.black,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                child: Container(
                  color: Colors.white,
                  width: 200,
                  height: 25,
                  margin: EdgeInsets.only(left: 10),
                ),
              ),

              const Divider(thickness: 5),

              const Text("Task 3"),

              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage("assets/pic_profie.jpg"),
              ),

              const Divider(thickness: 5),

              const Text("Task 4"),

              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        title: Text("John Doe"),
                        subtitle: Text("Software Engineer"),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        title: Text("Jane Smith"),
                        subtitle: Text("Product Manager"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}