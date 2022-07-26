import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "my App",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter ค่ะ"),
      ),
      body: Text("สวัสดีค่ะทุกคน"),
    ),
    theme: ThemeData(primarySwatch: Colors.brown),
  );
  runApp(app);
}
