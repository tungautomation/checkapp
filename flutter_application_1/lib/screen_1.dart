import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_2.dart';


int option =0;
String? name;
class Screen1 extends StatefulWidget {
  const Screen1({ super.key });

  @override
  State<Screen1> createState() => _Screen1();
}

class _Screen1 extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        
        showUnselectedLabels: false,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
        
      ]),
      body: MainScreen(),
      );
  }
}