import 'dart:html';
import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String title = 'Explicit Animation';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatefulWidget {
  const MyAppHome({Key? key}) : super(key: key);

  @override
  State<MyAppHome> createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> with TickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  static const String title = 'Explicit Animation';
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: RotatingWheel(controller: controller),
    );
  }
}

class RotatingWheel extends AnimatedWidget {
  const RotatingWheel({
    Key? key,
    required AnimationController controller,
  }) : super(key: key, listenable: controller);

  Animation<double> get progressOfAnimation => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: progressOfAnimation.value * 2.0 * math.pi,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AnimatedContainer(
            color: Colors.red,
          ),
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

/* class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotatingWheel(controller: _controller);
  }
}
 */