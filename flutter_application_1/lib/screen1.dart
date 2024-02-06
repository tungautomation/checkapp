import 'package:flutter/material.dart';

class trangchu extends StatelessWidget {
  const trangchu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            child:const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:40),
                    child: Text("Trang chủ",style: TextStyle(fontSize: 28,color: Color.fromARGB(221, 48, 47, 47))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}