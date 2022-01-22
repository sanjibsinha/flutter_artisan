import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: TweenAnimationExample(),
        ),
      ),
    );
  }
}

/// chnaging the name
class TweenAnimationExample extends StatefulWidget {
  const TweenAnimationExample({Key? key}) : super(key: key);

  @override
  State<TweenAnimationExample> createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {
  double targetValue = 24.0;
  Color endValue = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: const Duration(seconds: 1),
          builder: (BuildContext context, double size, Widget? child) {
            return TextButton(
              onPressed: () {
                setState(() {
                  targetValue = targetValue == 24.0 ? 72.0 : 24.0;
                });
              },
              child: Text(
                'Tap Me',
                style: TextStyle(
                  fontSize: size,
                ),
              ),
            );
          },
        ),
        const SizedBox(
          height: 10.0,
        ),
        TweenAnimationBuilder<Color>(
          tween: Tween<Color>(begin: Colors.amber, end: endValue),
          duration: const Duration(seconds: 1),
          builder: (BuildContext context, Color color, Widget? child) {
            return TextButton(
              onPressed: () {
                setState(() {
                  endValue =
                      endValue == Colors.amber ? Colors.pink : Colors.amber;
                });
              },
              child: Text(
                'Tap Me',
                style: TextStyle(
                  color: color,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
