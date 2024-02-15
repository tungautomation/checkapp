
import 'package:flutter/material.dart';

void main() {
  runApp(const Setting());
}

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cập nhật thông tin:-"),),
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),

    );
  }
}