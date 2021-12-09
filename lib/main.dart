import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'models/element_at.dart';
import 'models/global_green_scheme.dart';

import 'views/app_bar_next.dart';
import 'views/first_page.dart';
import 'views/second_page.dart';
import 'views/third_page.dart';

void main() {
  runApp(
    /// Providers are above [Root App] instead of inside it, so that tests
    /// can use [Root App] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (cntext) => ElementAt(),
        ),
        Provider<GlobalGreenScheme>(
          create: (context) => GlobalGreenScheme(),
        ),
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

class BottomNavigationHome extends StatelessWidget {
  const BottomNavigationHome({Key? key}) : super(key: key);

  static const TextStyle pageStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const List<Widget> _widgetOptions = <Widget>[
    FirstPage(),
    SecondPage(),
    ThirdPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('A SnackBar'),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.search_outlined),
            tooltip: 'Search',
            onPressed: () {
              // our code
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const AppBarNext();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(context.watch<ElementAt>().count),
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
        currentIndex: context.watch<ElementAt>().count,
        iconSize: 50,
        onTap: context.read<ElementAt>().onItemTapped,
        elevation: 5,
      ),
    );
  }
}
