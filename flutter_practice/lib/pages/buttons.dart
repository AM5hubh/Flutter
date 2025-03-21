import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/center.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
        centerTitle: true,
        elevation: 0,
        // leading: Icon(Icons.menu),
        // actions: [
        //   // Icon(Icons.search),
        //   // Icon(Icons.more_vert),
        //   IconButton(
        //       onPressed: () {
        //         return print("logout");
        //       },
        //       icon: Icon(Icons.logout))
        // ],
        backgroundColor: Colors.white70,
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: ListView(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.blue,
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
              ),
            ),
            ListTile(
              leading: Icon(Icons.center_focus_strong),
              title: Text("Center Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/center');
              },
            ),
            ListTile(
              leading: Icon(Icons.add_circle_outline),
              title: Text("Item 2"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Item 3"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment:  CrossAxisAlignment.center,
        children: [
          ElevatedButton(
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
          ElevatedButton(
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
        ],
      ),
    );
  }
}
