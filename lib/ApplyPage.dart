import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ApplyPage extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Text("This is our very dumb students."),
            SizedBox(height: 50,),
            Container(
              height: 500,
            )
          ],
        ),
      ),
    );
  }
}


