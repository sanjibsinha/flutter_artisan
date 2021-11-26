import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final globalTheme = ThemeData(
  primarySwatch: Colors.deepOrange,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontSize: 22,
      height: 1.2,
    ),
    bodyText2: TextStyle(
      color: Colors.blue,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      height: 1.0,
    ),
    caption: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      height: 1.2,
    ),
    headline1: TextStyle(
      color: Colors.deepOrange,
      fontFamily: 'Allison',
      fontWeight: FontWeight.bold,
      fontSize: 60,
    ),
    headline2: TextStyle(
      color: Colors.black38,
      fontSize: 30,
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
    DateTime now = DateTime.now();
    String stringDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
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
          Text(
            'Headline 1',
            style: globalTheme.textTheme.headline1,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Headline 2',
            style: globalTheme.textTheme.headline2,
          ),
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            child: Text(
              'Body Text 1: Here goes some introduction about yourself.',
              style: globalTheme.textTheme.bodyText1,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            child: Text(
              'Body Text 2: Here goes some more information regarding your works.',
              style: globalTheme.textTheme.bodyText2,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            child: Text(
              stringDate,
              style: globalTheme.textTheme.caption,
            ),
          ),
        ],
      ),
    );
  }
}
