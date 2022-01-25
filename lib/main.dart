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
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: ListView(
        children: [
          AnimatedDefaultTextStyle(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('Flutter'),
                Text(' is '),
                Text('awesome '),
              ],
            ),
            style: selected
                ? const TextStyle(
                    color: Colors.blue,
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 4,
                  )
                : const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w100,
                    fontSize: 14,
                    letterSpacing: 1,
                  ),
            duration: const Duration(milliseconds: 1000),
            curve: Curves.elasticOut,
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            child: const Text('Animate'),
            onPressed: () {
              setState(() {
                selected = !selected;
              });
            },
          )
        ],
      ),
    );
  }
}
