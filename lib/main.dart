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
    return ListView(
      children: [
        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: const Duration(seconds: 20),
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
        TweenAnimationBuilder<Color?>(
          // <-- Color might be null
          tween: ColorTween(begin: Colors.yellow, end: Colors.blue),
          duration: const Duration(seconds: 20),
          builder: (_, Color? color, __) {
            // <-- Color might be null
            return Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    color ??
                        Colors
                            .transparent, // <-- If color is null - pass transparent
                    BlendMode.modulate,
                  ),
                  image: const NetworkImage(
                      'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_960_720.jpg'),
                ),
              ),
              child: Container(),
            );
          },
        ),
      ],
    );
  }
}
