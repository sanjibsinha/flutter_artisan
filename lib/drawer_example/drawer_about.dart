import 'package:flutter/material.dart';
import '/drawer_example/drawer_contact.dart';
import '/drawer_example/drawer_example.dart';

class DrawerAbout extends StatelessWidget {
  const DrawerAbout({Key? key}) : super(key: key);
  static const routename = "/about";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Us Page')),
      body: const Center(
          child: Text(
        'About Us Page.',
        style: TextStyle(fontSize: 50.0),
      )),
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
                Navigator.of(context).pushNamed(DrawerHome.routename);
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
