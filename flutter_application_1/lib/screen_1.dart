import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';



class Screen1 extends StatefulWidget {
  const Screen1({ super.key });

  @override
  State<Screen1> createState() => _Screen1();
}

class _Screen1 extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Row(children: [IconButton(onPressed: (){}, icon: const Icon(Icons.table_rows_rounded)),const Text("Trang chủ")],),backgroundColor: const Color.fromARGB(255, 246, 139, 132), ),
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

        ],
      ),
    );
  }

  SizedBox layout_messeage(colorss) {
    return SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Container(
                height: 100,
                color:colorss,
              ),
            ),
          );
  }
}