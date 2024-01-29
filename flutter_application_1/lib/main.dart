// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

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
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        title: const Center(child: Text("Đăng nhập",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber,),)),
        backgroundColor: Colors.blue,
      ),
      body:Center(        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Input_Widget("Username",false),
            Input_Widget("Passworks",true),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child:const Text('Đăng kí',style: TextStyle(fontStyle: FontStyle.italic,color: Color.fromRGBO(61, 61, 60, 0.5)),)),
                const Text(' || ',style: TextStyle(fontStyle: FontStyle.italic,color: Color.fromRGBO(61, 61, 60, 0.5)),),
                TextButton(onPressed: (){}, child: const Text('Quên mật khẩu ?',style: TextStyle(fontStyle: FontStyle.italic,color: Color.fromRGBO(61, 61, 60, 0.5)),)),
              ],
            ),
           OutlinedButton(onPressed: (){}, child: const Text('Đăng Nhập',))
          ],
        ),
      ),
    );
  }
  // ignore: non_constant_identifier_values, non_constant_identifier_names
  SizedBox Input_Widget(String name, bool event ) {
    return SizedBox(
      width: 320,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [       
              TextField(obscureText: event,decoration: InputDecoration(labelText:name,border:const OutlineInputBorder()),style: const TextStyle(fontSize: 20),),
            ],
                ),
        ),
    );
  }
}