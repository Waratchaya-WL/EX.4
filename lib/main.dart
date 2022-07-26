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
          child: Text(
            "สวัสดีค่ะทุกคน",
            style: TextStyle(fontSize: 30, color: Colors.brown),
          ),
        ),
      ),
      theme: ThemeData(primaryColor: Colors.black),
    );
  }
}
