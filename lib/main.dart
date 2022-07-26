import 'package:flutter/material.dart';
import 'FoodMenu.dart';
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
  //กลุ่มข้อมูล
  List<FoodManu> menu=[
    FoodManu("ไก่ทอด", "200"),
    FoodManu("ปลาทอด", "500"),
    FoodManu("กุ้งทอด", "600"),
    FoodManu("ปลาหมึกทอด", "800")
  ];
  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เลือกเมนูอาหาร"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
                FoodManu food=menu[index];
                return ListTile(
                  title: Text(food.name,style: TextStyle(fontSize: 30),),
                  subtitle: Text("ราคา"+food.price+"บาท"),
                  );
            })
           );
  }

}
