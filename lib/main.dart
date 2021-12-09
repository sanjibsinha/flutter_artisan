import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/global_green_scheme.dart';

void main() {
  runApp(
    /// Providers are above [Root App] instead of inside it, so that tests
    /// can use [Root App] while mocking the providers
    MultiProvider(
      providers: [
        Provider<GlobalGreenScheme>(
          create: (context) => GlobalGreenScheme(),
        )
      ],
      child: const BottomNavigationBarTest(),
    ),
  );
}

class BottomNavigationBarTest extends StatelessWidget {
  const BottomNavigationBarTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData globalTheme =
        Provider.of<GlobalGreenScheme>(context).globalTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: globalTheme,
      home: const BottomNavigationHome(),
    );
  }
}

class BottomNavigationHome extends StatefulWidget {
  const BottomNavigationHome({Key? key}) : super(key: key);

  @override
  _BottomNavigationHomeState createState() => _BottomNavigationHomeState();
}

class _BottomNavigationHomeState extends State<BottomNavigationHome> {
  static const TextStyle pageStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'First Page',
      style: pageStyle,
    ),
    Text(
      'Second Page',
      style: pageStyle,
    ),
    Text(
      'Third Page',
      style: pageStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BottomNavigationBar Example',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        /// customizing background color
        ///
        backgroundColor: Theme.of(context).bottomAppBarColor,
        mouseCursor: SystemMouseCursors.grab,
        unselectedItemColor: Colors.deepOrangeAccent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        selectedFontSize: 20,
        selectedIconTheme: const IconThemeData(
          color: Colors.amberAccent,
        ),

        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'First Page',
            backgroundColor: Colors.green[200],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.holiday_village),
            label: 'Second Page',
            backgroundColor: Colors.green[400],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.hotel_outlined),
            label: 'Third Page',
            backgroundColor: Colors.green[700],
          ),
        ],
        selectedItemColor: Colors.green[800],
        currentIndex: _selectedIndex,
        iconSize: 50,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
