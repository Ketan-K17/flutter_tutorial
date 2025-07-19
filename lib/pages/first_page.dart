import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First Page",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 5.0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[100],
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite, size: 48)),
            // home page list title
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E", style: TextStyle(fontSize: 15)),
              onTap: () {
                Navigator.pop(
                  context,
                ); // helps close the drawer before navigating to home page.
                Navigator.pushNamed(context, "/home");
              },
            ),

            // settings page list title
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S", style: TextStyle(fontSize: 15)),
              onTap: () {
                Navigator.pop(
                  context,
                ); // helps close the drawer before navigating to settings page.
                Navigator.pushNamed(context, "/settings");
              },
            ),
          ],
        ),
      ),
    );
  }
}
