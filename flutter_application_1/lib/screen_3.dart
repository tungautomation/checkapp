import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_1.dart';


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
                child: option_setting("Sản lượng cần sản xuất"),
              ),
              option_setting("Thêm tài khoản có thể truy cập "),
              option_setting("Thông tin"),
              option_setting("Cập nhập thông tin"),
              option_setting("Bảo mật thông tin"),
              option_setting("Trợ giúp & Hỗ trợ setup"),
              option_setting("Quản lí cá nhân truy cập"),
              option_setting("Đóng góp ý kiến để cải thiện"),
              option_setting("Lịch sử truy cập "),
              option_setting("Đăng xuất"),

            ],
          ),
        ),


    );
  }

  Column option_setting(String name_Option) {
    return Column(children: [
        Container(height: 0.5,color:visiable_Light == true? Colors.white:Colors.black,),
       Container(
        
        height: 82,
        width: 1000,
        color: visiable_Light == true? Colors.black:Colors.white,
        child:TextButton(onPressed: (){

        }, 
        child: Text(name_Option,style:TextStyle(color: visiable_Light == true?Colors.white:Colors.black))),
       ),
      ]);
  }
}

// Các widgets tạo ra các trang navigation.push