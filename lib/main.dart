import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'models/global_green_scheme.dart';
import 'models/counter.dart';

void main() {
  runApp(
    /// Providers are above [Root App] instead of inside it, so that tests
    /// can use [Root App] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (cntext) => Counter(),
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
      home: BottomNavigationHome(),
    );
  }
}

class BottomNavigationHome extends StatelessWidget {
  BottomNavigationHome({Key? key}) : super(key: key);

  static const TextStyle pageStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const List<Widget> _widgetOptions = <Widget>[
    FirstPage(pageStyle: pageStyle),
    SecondPage(pageStyle: pageStyle),
    ThirdPage(pageStyle: pageStyle),
  ];

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
        child: _widgetOptions.elementAt(context.watch<Counter>().count),
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
        currentIndex: context.watch<Counter>().count,
        iconSize: 50,
        onTap: context.read<Counter>().onItemTapped,
        elevation: 5,
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
    required this.pageStyle,
  }) : super(key: key);

  final TextStyle pageStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Third Page',
      style: pageStyle,
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
    required this.pageStyle,
  }) : super(key: key);

  final TextStyle pageStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Second Page',
      style: pageStyle,
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
    required this.pageStyle,
  }) : super(key: key);

  final TextStyle pageStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      'First Page',
      style: pageStyle,
    );
  }
}
