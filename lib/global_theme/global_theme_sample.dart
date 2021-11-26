import 'package:flutter/material.dart';

final globalTheme = ThemeData(
  primarySwatch: Colors.deepOrange,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontSize: 25,
      height: 1.5,
    ),
    bodyText2: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      height: 1.2,
    ),
    caption: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      height: 1.2,
    ),
    headline1: TextStyle(
      fontSize: 60,
      height: 3.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Allison',
      color: Colors.black38,
    ),
    headline2: TextStyle(
      fontSize: 40,
      height: 2.4,
      fontWeight: FontWeight.bold,
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.amber,
    // This will control the "back" icon
    iconTheme: IconThemeData(color: Colors.red),
    // This will control action icon buttons that locates on the right
    actionsIconTheme: IconThemeData(color: Colors.blue),
    centerTitle: false,
    elevation: 15,
    titleTextStyle: TextStyle(
      color: Colors.deepPurple,
      fontFamily: 'Allison',
      fontWeight: FontWeight.bold,
      fontSize: 40,
    ),
  ),
);

class GlobalThemeSample extends StatelessWidget {
  const GlobalThemeSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Global Theme Sample',
      theme: globalTheme,
      home: const GlobalThemeSampleHome(),
    );
  }
}

class GlobalThemeSampleHome extends StatelessWidget {
  const GlobalThemeSampleHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Global Theme Sample',
          style: globalTheme.appBarTheme.titleTextStyle,
        ),
      ),
      body: const GlobalThemeBody(),
    );
  }
}

class GlobalThemeBody extends StatelessWidget {
  const GlobalThemeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            width: 70,
            color: Colors.blue[50],
            child: const Align(
              alignment: Alignment.topCenter,
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 60.0,
            child: Text(
              'A Sample of Global Theme',
              style: globalTheme.textTheme.headline1,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
