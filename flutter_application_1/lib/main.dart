import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen_1.dart';
int trang = 0;
bool visiable = true;
void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => Screen_1();

}
class Screen_1 extends State<MyHomePage> {
  bool visiable = true;
  void onClickshowpasswword()
  {
   setState(() {
     visiable = !visiable;
   });
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      


      body: trang == 0?login_image():const Screen1(),
    );
  }

  SingleChildScrollView login_image() {
    return SingleChildScrollView(
    child: Column(
      children: 
      [
        // AppBar(title: Text("Sign"),),
         Center(
           child: Padding(
             padding: const EdgeInsets.symmetric(vertical:82),
             child: SizedBox
             (
                child:Image.asset('images/477290.png'),


              ),
           ),
         ),
         const Padding(
           padding: EdgeInsets.symmetric(horizontal: 30),
           child: SizedBox(
            child: TextField(decoration: InputDecoration(labelText: "Username",prefixIcon: Icon(Icons.location_history_outlined)),)
           ),
         ),
        Padding(
           padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
           child: SizedBox(
            child: TextField(decoration: InputDecoration(labelText: "Passworks",prefixIcon: Icon(Icons.lock_outline_rounded),suffixIcon: IconButton(onPressed: (){onClickshowpasswword();}, icon: Icon(Icons.remove_red_eye))),obscureText: visiable,)
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(right: 20,top: 5),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){}, child: const Text("Quên mật khẩu?",style: TextStyle(fontSize: 13),)),
              TextButton(onPressed: (){}, child: const Text("Đăng kí ",style: TextStyle(fontSize: 13))),
            ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 52),
           child: SizedBox(
            width:300,
            height: 82,
             child: OutlinedButton(onPressed: (){
              setState(() {
                trang = 2;
              });
             },child: const Text("Đăng nhập",style: TextStyle(fontSize: 30))),
           ),
         ),
      ],
    ),
  );

  }
  }
  