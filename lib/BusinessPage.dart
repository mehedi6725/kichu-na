import 'package:flutter/material.dart';
import 'ApplyPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BusinessSection(),
    );
  }
}

class BusinessSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Section'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Company Name
            Text(
              'Company Name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),

            // Company Description
            Text(
              'We provide top-notch services in web development, mobile applications, and cloud computing. Our team is dedicated to delivering excellence and innovation.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Services
            Text(
              'Services',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.business),
              title: Text('Web Development'),
            ),
            ListTile(
              leading: Icon(Icons.mobile_friendly),
              title: Text('Mobile App Development'),
            ),
            ListTile(
              leading: Icon(Icons.cloud),
              title: Text('Cloud Services'),
            ),
            SizedBox(height: 16),

            // Contact Info
            Text(
              'Contact Us',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: <Widget>[
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text('+8801321-603137'),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.email),
                SizedBox(width: 8),
                Text('mehedihasan@gmail.com'),
              ],
            ),
            SizedBox(height: 16),

            // Button to View More
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to another page or show more information
                },
                child: Text('View More'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Study Section'),
      centerTitle: true,
    ),
    body: Column(
      children: [
        Text("This is school"),
        SizedBox(height: 24,),
        Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ApplyPage()));
            },
            child: Text("View More"),
          ),

        )
      ],
    ),
  );
}

