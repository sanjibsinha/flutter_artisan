import 'package:flutter/material.dart';

import 'dash_board_home.dart';

class DashBoard extends StatelessWidget {
  //final Size size;
  const DashBoard({
    Key? key,
    //required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'A Custom Home Page',

      /// ignore: todo
      ///TODO: we'll make a custom global theme later
      ///

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashBoardHome(size: size),
    );
  }
}
