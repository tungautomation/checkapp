
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_application_1/donvihanhchinh.dart';
import 'package:flutter_application_1/province-data.dart';
import 'package:flutter_application_1/screen_1.dart';

String? name_city ;
String? huyen;
bool checkgt = false;
String? namegt = "Nam";

void main() {
  runApp(const Setting());
}

class JsonLoader {
  Future<Map<String, dynamic>> loadJsonData() async {
    // Đọc nội dung của tệp JSON từ assets
    String jsonString = await rootBundle.loadString('assert/don_vi_hanh_chinh.json');
    
    // Phân tích nội dung JSON thành một Map
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
      return jsonData;
  }
}

JsonLoader jsonLoader = JsonLoader();

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
                select_gioitinh(),
              ],
            ),
            // dulieu(),
          ],
        ),
      ),
    );
  }

  TableRow select_gioitinh() {
    return TableRow(
                children: 
                [
                    
                   CheckboxListTile(
                    title: Text("$namegt",),
                    value: checkgt,
                    subtitle: Text("Giới tính nữ tick !"),
                    onChanged: (check)
                    {
                      setState(() {
                        checkgt = check!;
                        checkgt ==true? namegt = "Nữ":namegt = "Nam"; 
                        namek();
                      });
                      

                    }
                    ),
                ], 
                    
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

void namek()
{
FutureBuilder<Map<String, dynamic>> dulieu() {
    return FutureBuilder<Map<String, dynamic>>(
          future: jsonLoader.loadJsonData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // Dữ liệu đã được tải thành côngs
              Map<String, dynamic> jsonData = snapshot.data!;
              // Sử dụng dữ liệu ở đây
              List province_d = jsonData['province'];
              List provinceList = province_d.map((json) => Province.fromJson(json)).toList();
              print(provinceList);
              List<dynamic> name_city = [];
              
              provinceList.forEach((rovince) {name_city.add(rovince.name);});
              var userss = User.fromJson(jsonData);

              return Text("11");

            } else if (snapshot.hasError) {
              // Xảy ra lỗi khi tải dữ liệu
              return Text('Error: ${snapshot.error}');
            }
            // Hiển thị tiến trình tải
            return CircularProgressIndicator();
          },
        );
  }
}