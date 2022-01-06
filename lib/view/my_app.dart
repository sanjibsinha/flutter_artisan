import 'package:flutter/material.dart';

import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Button Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.red.shade900,
        primaryColor: Colors.blue.shade900,
        primaryColorDark: Colors.green.shade100,
      ),
      home: const MyHomePage(),
    );
  }
}
