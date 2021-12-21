import 'package:flutter/material.dart';
import 'dash_board_home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Custom Home Page',

      /// ignore: todo
      ///TODO: we'll make a custom global theme later
      ///

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashBoardHome(),
    );
  }
}
