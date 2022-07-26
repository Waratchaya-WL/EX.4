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
      home: MyHomePage(),
      theme: ThemeData(primaryColor: Colors.brown),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; // การสร้าง state

  

  @override
  Widget build(BuildContext context) {

    // กลุ่มข้อมูล Text Wiget
    List<Widget> data = [];
  for(var i = 0 ;i<10;i++){
      data.add(Text("รายการที่ ${i+1}"));
  }
    return Scaffold(
      appBar: AppBar(
        title: Text("โปรแกรมนับเลข"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:addNumber ,
        child: Icon(Icons.add),
      ),
    );
  }

  void addNumber(){
      setState(() {
            number++;
          });

  }
}
