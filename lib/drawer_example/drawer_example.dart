import 'package:flutter/material.dart';
import '/drawer_example/drawer_about.dart';
import '/drawer_example/drawer_contact.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Example',
      home: const DrawerHome(),
      routes: {
        DrawerAbout.routename: (context) => const DrawerAbout(),
        DrawerContact.routename: (context) => const DrawerContact(),
      },
    );
  }
}

class DrawerHome extends StatelessWidget {
  const DrawerHome({Key? key}) : super(key: key);
  static const routename = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('A Drawer Example')),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          child: const Text(
            'A Drawer Example.',
            style: TextStyle(fontSize: 50.0),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Sanjib Sinha"),
              accountEmail: Text("sanjib@sanjibsinha.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("About"),
              onTap: () {
                Navigator.of(context).pushNamed(DrawerAbout.routename);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text("Contact Us"),
              onTap: () {
                Navigator.of(context).pushNamed(DrawerContact.routename);
              },
            ),
          ],
        ),
      ),
    );
  }
}