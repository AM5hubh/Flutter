// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class centerPage extends StatelessWidget {
  const centerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Center Styling"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white70,
      ),
      body: Center(
          child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
        child: Icon(
          Icons.favorite,
          color: Colors.red,
          size: 40,
        ),
      )),
    );
  }
}
