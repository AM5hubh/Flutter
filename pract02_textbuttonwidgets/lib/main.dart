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
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Text and buttons"),
            backgroundColor: Colors.blueAccent,
          ),
          body: Column(children: [
            Center(child: Text("Text and buttons"),),
            Center(child: ElevatedButton(onPressed: () { }, child: Text("Click Me")))
          ]),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "settings", icon: Icon(Icons.settings)),
            ],
          ),
        ));
  }
}
