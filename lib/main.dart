import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Animated Rotation';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const AlignTransitionExample(),
      ),
    );
  }
}

class AlignTransitionExample extends StatefulWidget {
  const AlignTransitionExample({Key? key}) : super(key: key);

  @override
  _AlignTransitionExampleState createState() => _AlignTransitionExampleState();
}

class _AlignTransitionExampleState extends State<AlignTransitionExample>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<AlignmentGeometry> _tweenAndCurvedAnimation =
      Tween<AlignmentGeometry>(
    begin: Alignment.bottomLeft,
    end: Alignment.center,
  ).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceInOut,
    ),
  );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: 400.0,
      height: 400.0,
      color: Colors.red,
      child: AlignTransition(
        alignment: _tweenAndCurvedAnimation,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 50.0,
            height: 50.0,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
