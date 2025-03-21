import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/buttons.dart';
import 'package:flutter_practice/pages/center.dart';
import 'package:flutter_practice/pages/column.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // String name = "AM5hubh";
  // int repos = 29;
  // double rating = 4.9;
  // bool isCoder = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonsPage(),
      routes:{
        "/buttons": (context) => ButtonsPage(),
        "/column": (context) => ColumnPage(),
        '/center': (context) => centerPage(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black87,
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
      ),
    );
  }
}
