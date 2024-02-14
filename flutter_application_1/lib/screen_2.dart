import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_1.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override

  Widget build(BuildContext context) {
   
    return  Column(
      children: [
       Row(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              width: 60,
              height: 60,
              child: SizedBox(child: Image.asset('images/477290.png')),
              // decoration: const BoxDecoration(color: Colors.amber),
            ),
          ),
          Text("Welcome!\n$name",style: TextStyle(fontWeight: FontWeight.w600),)
        ],
       ),
      ],
    );

  }
}