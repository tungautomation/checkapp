
import 'package:flutter/material.dart';
// import 'dart:convert';


void main() {
  runApp(const Setting());
}
String option = "one";
class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: information(),
    );
  }
}
class information extends StatefulWidget {
  const information({super.key});
  @override
  State<information> createState() => _informationState();
}

class _informationState extends State<information> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Cập nhật thông tin")),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:28),
              child: Center(
                child: Container(
                  width: 240,
                  height: 240,
                  decoration:const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(60)),color: Colors.amber),
                  child: Stack(
                    children: [
                      Center(child: Image.asset('images/477290.png')),
                      Positioned(bottom: 6,right: 6,
                      child: Container(
                        decoration:const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100)),color: Colors.black12),
                        child: IconButton(onPressed: ()
                        {
                          setState(() {
                            
                          });
                        },
                         icon:  const Icon(Icons.add,color: Colors.red,size: 40,),
                         
                         ),
                         ),
                         ),
                    ],
                  ),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(15),
              child: Table(
                // border: TableBorder.all(),
                children: const [
                  TableRow(
                    children: [Padding(
                      padding: EdgeInsets.only(right: 10 ),
                      child: TableCell(child: TextField(decoration: InputDecoration(labelText: "Họ:*"),)),
                    ),TableCell(child: TextField(decoration: InputDecoration(labelText: "Tên:*"),))]
                  )
                ],
              ),
            ),
            Table(
              children: [
                Input_update("Số CCCD / CMTND"),
                Input_update("Email:*"),
                Input_update('Số điện thoại:*'),
              ],
            ),

          ],
        ),
      ),
    );
  }

  TableRow Input_update(String labelname) {
    return  TableRow(children: [Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TableCell(child: TextField(decoration: InputDecoration(labelText: labelname),)),
            ),
            ],
            );
  }
}