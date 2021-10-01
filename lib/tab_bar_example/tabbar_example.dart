import 'package:flutter/material.dart';
import 'tabbar_contact.dart';
import 'tabbar_home.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Scaffold Example',
              style: TextStyle(
                fontFamily: 'Allison',
              ),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home_max_outlined), text: "Home"),
                Tab(icon: Icon(Icons.contact_page_outlined), text: "Contact")
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              TabBarHome(),
              TabBarContact(),
            ],
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
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.contacts),
                  title: const Text("Contact Us"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: const Icon(Icons.access_alarms_outlined),
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          persistentFooterButtons: <Widget>[
            TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.backpack_rounded,
                color: Colors.green,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.handyman_rounded,
                color: Colors.red,
              ),
            ),
          ],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            fixedColor: Colors.teal,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: 'Add',
                icon: Icon(Icons.add_box),
              ),
            ],
            onTap: (int index) {},
          ),
          backgroundColor: Colors.amberAccent,
        ),
      ),
    );
  }
}
