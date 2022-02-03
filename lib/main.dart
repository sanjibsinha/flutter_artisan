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
        body: const DecoratedBoxTransitionExample(),
      ),
    );
  }
}

class DecoratedBoxTransitionExample extends StatefulWidget {
  const DecoratedBoxTransitionExample({Key? key}) : super(key: key);

  @override
  State<DecoratedBoxTransitionExample> createState() =>
      _DecoratedBoxTransitionExampleState();
}

class _DecoratedBoxTransitionExampleState
    extends State<DecoratedBoxTransitionExample> with TickerProviderStateMixin {
  final DecorationTween beginAndEndDecoration = DecorationTween(
    begin: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.red.withOpacity(0.7),
          Colors.red,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    end: BoxDecoration(
      color: Colors.blue,
      border: Border.all(
        color: Colors.red,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(40.0)),
      boxShadow: const [
        BoxShadow(
          color: Colors.black54,
          blurRadius: 20.0,
          spreadRadius: 20.0,
        ),
      ],
      gradient: const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Colors.red,
          Colors.white,
        ],
      ),
    ),
  );

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: DecoratedBoxTransition(
          decoration: beginAndEndDecoration.animate(_controller),
          child: Container(
            padding: const EdgeInsets.all(10),
            width: 200,
            height: 200,
            child: Image.network(
                'https://cdn.pixabay.com/photo/2021/11/13/23/06/tree-6792528_960_720.jpg'),
          ),
        ),
      ),
    );
  }
}
