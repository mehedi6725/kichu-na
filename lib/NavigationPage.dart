import 'package:flutter/material.dart';
import 'package:my_profile_2/BusinessPage.dart';
import 'package:my_profile_2/HomePage.dart';
import 'package:my_profile_2/ProfilePage.dart';
import 'package:my_profile_2/SchoolPage.dart';


///stateful Widget vs Stateless Widget
///Stateful widget has action
///Stateless Widget does not have it.
///
/// stateful Widget is heavy
/// Stateless widget is light.
/// Navigation page should be statefull
///

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  List <Widget>  _widgetOptions = <Widget> [
    HomePage(),
    BusinessSection(),
    SchoolPage(),
    ProfilePage()

  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      appBar: AppBar(
        title: Text("Mehedi"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), label: 'School'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile'
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}

