import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'click';
  var textChange = TextEditingController();
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
            Center(
              child: Text("Text and buttons"),
            ),
            SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)),
                  ),
                )),

            Center(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        buttonName = 'Clicked';
                      });
                      // print('Hello World');
                      // buttonName = 'Clicked';
                    },
                    child: Text(buttonName)))
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
