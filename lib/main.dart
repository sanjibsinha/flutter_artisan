import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Fade Transition';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const FadeTransitionExample(),
      ),
    );
  }
}

class FadeTransitionExample extends StatefulWidget {
  const FadeTransitionExample({Key? key}) : super(key: key);

  @override
  _FadeTransitionExampleState createState() => _FadeTransitionExampleState();
}

class _FadeTransitionExampleState extends State<FadeTransitionExample>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _curvedAnimation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.bounceInOut,
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
      width: 100.0,
      height: 100.0,
      color: Colors.red,
      child: FadeTransition(
        opacity: _curvedAnimation,
        child: Padding(
          padding: const EdgeInsets.all(10),
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
