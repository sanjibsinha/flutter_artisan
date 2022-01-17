import 'package:flutter/material.dart';

import 'animated_container.dart';

class MyAppHome extends StatefulWidget {
  const MyAppHome({Key? key}) : super(key: key);

  @override
  State<MyAppHome> createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> with TickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    /// reducing the number increases the speed of rotation
    duration: const Duration(seconds: 3),
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
