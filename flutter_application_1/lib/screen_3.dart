import 'package:flutter/material.dart';
import 'package:flutter_application_1/information_setting.dart';
import 'package:flutter_application_1/screen_1.dart';

int thutu = 0;
class Screen3 extends StatefulWidget {
  const Screen3({ super.key });

  @override
  State<Screen3> createState() => _Screen3();
}

class _Screen3 extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: visiable_Light ==true?Colors.black:Colors.white,
        height: 82*10,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: option_setting("Sản lượng cần sản xuất",1),
              ),
              option_setting("Thêm tài khoản có thể truy cập ",2),
              option_setting("Thông tin",3),
              option_setting("Cập nhập thông tin",4),
              option_setting("Bảo mật thông tin",5),
              option_setting("Trợ giúp & Hỗ trợ setup",6),
              option_setting("Quản lí cá nhân truy cập",7),
              option_setting("Đóng góp ý kiến để cải thiện",8),
              option_setting("Lịch sử truy cập ",9),
              option_setting("Đăng xuất",10),

            ],
          ),
        ),


    );
  }

  Column option_setting(String nameOption,int thutu) {
    return Column(children: [
        Container(height: 0.5,color:visiable_Light == true? Colors.white:Colors.black,),
       Container(
        
        height: 82,
        width: 1000,
        color: visiable_Light == true? Colors.black:Colors.white,
        child:TextButton(onPressed: (){
          switch(thutu)
          {
            case 4:Navigator.push(context,MaterialPageRoute(builder: (context) => const Setting()));break;

          }
        }, 
        child: Text(nameOption,style:TextStyle(color: visiable_Light == true?Colors.white:Colors.black))),
       ),
      ]);
  }
}

// Các widgets tạo ra các trang navigation.push
// information : thông tin ;


