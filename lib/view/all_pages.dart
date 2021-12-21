import 'package:flutter/material.dart';
import '/model/shaping_painter.dart';

import 'all_containers.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(30),
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(30),
                child: const Text(
                  'Accounts',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class FourthPage extends StatelessWidget {
  const FourthPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(30),
                child: const Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
