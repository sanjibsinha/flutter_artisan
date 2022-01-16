import 'package:flutter/material.dart';

import 'dart:math' as math;

class RotatingWheel extends AnimatedWidget {
  const RotatingWheel({
    Key? key,
    required AnimationController controller,
  }) : super(key: key, listenable: controller);

  Animation<double> get progressOfAnimation => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      /// rotating speed is increasing
      angle: progressOfAnimation.value * 10.0 * math.pi,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AnimatedContainer(
            color: Colors.red,
          ),
          // ignore: prefer_const_constructors
          AnimatedContainer(
            color: Colors.blue,
          ),
          AnimatedContainer(
            color: Colors.green,
          ),
          AnimatedContainer(
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}

class AnimatedContainer extends StatelessWidget {
  const AnimatedContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: color,
      child: Container(
        margin: const EdgeInsets.all(
          5.0,
        ),
        padding: const EdgeInsets.all(
          5.0,
        ),
        width: 70,
        height: 50,
        child: const Text(
          'Explicit Animation',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
