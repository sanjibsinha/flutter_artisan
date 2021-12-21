import 'package:flutter/material.dart';
import 'dash_board_home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return const MaterialApp(
      title: 'A Custom Home Page',
      home: DashBoardHome(
          // size: size,
          ),
    );
  }
}
