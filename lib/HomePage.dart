import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Image
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/20130101000903_IMG_8849-01.jpeg'), // Change as needed
            ),
            const SizedBox(height: 16),

            // Welcome Text
            const Text(
              'Welcome to Home Page!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Buttons
            ElevatedButton(
              onPressed: () {},
              child: const Text('Business Section'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('School Section'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Profile Page'),
            ),
          ],
        ),
      ),
    );
  }
}
