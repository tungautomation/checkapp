import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';


bool selection = false;
class Screen1 extends StatefulWidget {
  const Screen1({ super.key });

  @override
  State<Screen1> createState() => _Screen1();
}

class _Screen1 extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Row(children: [IconButton(onPressed: (){
        setState(() {
          selection = !selection;
          print(selection); 
        });
      }, icon: const Icon(Icons.table_rows_rounded)),const Text("Trang chủ")],),backgroundColor: const Color.fromARGB(255, 246, 139, 132), ),
      body: trang == 3?Screen1():thongtin_sever(),
    );
  }

  SingleChildScrollView thongtin_sever() {
    return SingleChildScrollView(
      child: Column(
        children: [
          layout_messeage(const Color.fromARGB(255, 150, 150, 235)),
          layout_messeage(const Color.fromARGB(255, 150, 150, 235)),
          layout_messeage(const Color.fromARGB(255, 150, 150, 235)),
          layout_messeage(const Color.fromARGB(255, 150, 150, 235)),
          layout_messeage(const Color.fromARGB(255, 150, 150, 235)),
          layout_messeage(const Color.fromARGB(255, 150, 150, 235)),
          layout_messeage(const Color.fromARGB(255, 150, 150, 235)),
          layout_messeage(const Color.fromARGB(255, 150, 150, 235)),

          SizedBox(
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                child: const Center(
                  child:Text("Ứng dụng đượcphát triển bởi tungautomation@copy\nPhone:0325307306 ",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 176, 174, 174)),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    
  }

  SizedBox layout_messeage(colorss) {
    return SizedBox(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 1000,
                  // height: 100,
                  child: Text("dataffhggggggggffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdsfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"),
                  color:colorss,
                ),
              ),
            ),
          );
  }
}