import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// สร้าง widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello flutter ค่ะ"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("สวัสดีค่ะทุกคน"),
              Text("Hello Dart"),
              Text("Hello flutter")
            ],
          ),
        ),
      ),
      theme: ThemeData(primaryColor: Colors.black),
    );
  }
}
