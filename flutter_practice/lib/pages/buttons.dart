import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/center.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        centerTitle: true,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          // Icon(Icons.search),
          // Icon(Icons.more_vert),
          IconButton(
              onPressed: () {
                return print("logout");
              },
              icon: Icon(Icons.logout))
        ],
        backgroundColor: Colors.white70,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Center Styling"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => centerPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
