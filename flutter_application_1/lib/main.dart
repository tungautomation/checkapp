// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen1.dart';

bool on =false;
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
    bool display = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        title: const Center(child: Text("Đăng nhập",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber,),)),
        backgroundColor: Colors.blue,
      ),
      body:  
          
             
                SingleChildScrollView(
                  
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 65),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                      
                      SizedBox(
                        child:Image.asset('images/477290.png',),
                      ),
                      Input_Widget("Username",false,null),
                      Input_Widget("Passworks",true,display),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: (){}, child:const Text('Đăng kí',style: TextStyle(fontStyle: FontStyle.italic,color: Color.fromRGBO(61, 61, 60, 0.5)),)),
                          const Text(' || ',style: TextStyle(fontStyle: FontStyle.italic,color: Color.fromRGBO(61, 61, 60, 0.5)),),
                          TextButton(onPressed: (){}, child: const Text('Quên mật khẩu ?',style: TextStyle(fontStyle: FontStyle.italic,color: Color.fromRGBO(61, 61, 60, 0.5)),)),
                        ],
                      ),
                     OutlinedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const trangchu(),));
                      on =true;
                      print(on);
                     }, 
                     child: const Text('Đăng Nhập',)),
                    ],
                           ),
                 ),
               ),
             
    );
  }
  // ignore: non_constant_identifier_values, non_constant_identifier_names
  SizedBox Input_Widget(String name, bool event ,display) {
    return SizedBox(
      width: 320,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [       
              TextField(obscureText: event,decoration: InputDecoration(labelText:name,border:const OutlineInputBorder(),prefixIcon: Icon(event != true?Icons.location_history_outlined:Icons.lock_outline_rounded),suffixIcon:IconButton(icon: Icon((event == true?(display == true?Icons.remove_red_eye:Icons.remove_red_eye_outlined):Icons.check)) ,onPressed: (){},)),style: const TextStyle(fontSize: 20),

              onChanged: (value) 
              {
                print(value);
              },),
            ],
                ),
        ),
    );
  }
}