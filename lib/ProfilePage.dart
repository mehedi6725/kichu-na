

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                "assets/IMG_4627-02 (1).jpeg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Mehedi Hasan",
            style: TextStyle(fontSize: 40),
          ),
          Text(
            "Department of CSE",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Magura Polytechnic Institute",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 50,
                color: Colors.blue,
                child: Icon(Icons.add_location, size: 40,),
              ),
              Container(
                width: 100,
                height: 50,
                color: Colors.greenAccent,
                child: Icon(Icons.video_call, size: 40,),
              ),
              Container(
                width: 100,
                height: 50,
                color: Colors.cyanAccent,
                child: Icon(Icons.message, size: 40,),
              ),

            ],
          )
        ],
      ),
    );
  }
}
