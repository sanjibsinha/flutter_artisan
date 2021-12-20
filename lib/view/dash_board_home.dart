import 'package:flutter/material.dart';
import '/model/shaping_painter.dart';

import 'all_containers.dart';

class DashBoardHome extends StatelessWidget {
  const DashBoardHome({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        leading: const Icon(Icons.menu),
        title: const Text(
          'Let\'s Go!',
          textAlign: TextAlign.center,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            child: CustomPaint(
              painter: ShapingPainter(),
              child: Container(
                height: size.height / 1,
              ),
            ),
          ),
          ListView(
            children: const [
              FirstContainer(),
              SecondContainer(),
              ThirdContainer()
            ],
          ),
        ],
      ),
    );
  }
}
