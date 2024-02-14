import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_2.dart';
import 'package:flutter_application_1/screen_3.dart';


int option =0;
bool visiable_Light = false;
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
      appBar: AppBar(backgroundColor: visiable_Light == true?Colors.black:Colors.white,title: 
        Row(     mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(width: 60,height: 60,color: Colors.white,child: Image.asset('images/477290.png')),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Welcome!\n$name",style: TextStyle(fontSize: 15,color: visiable_Light == true?Colors.white:Colors.black),),
                      
                    ),
                    IconButton(onPressed: (){
                    setState(() {
                      visiable_Light = !visiable_Light;
                    });
                  }, icon: Icon(visiable_Light == true?Icons.light_mode:Icons.light_mode_outlined,color: visiable_Light == true?Colors.white:Colors.black))

                  ],

                ),
              ),
            ],
          ),
          


        ],),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        onTap: (value)
        {
          setState(() {
            option = value;
          });
        },
        showUnselectedLabels: false,
        // showSelectedLabels: false,
        selectedItemColor:Colors.blue ,
        currentIndex: option,
        unselectedItemColor: visiable_Light == true?Colors.white:Colors.black,
        backgroundColor: visiable_Light == false?Colors.white:Colors.black,
        selectedFontSize: 10,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
        // BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
        
        
      ]),
      body: option ==0 ? MainScreen():Screen3(),
      );
  }
}