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
          Center(
            child: AnimatedDefaultTextStyle(
              child: Container(
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(20.0),
                child: const Text('Flutter'),
              ),
              style: selected
                  ? const TextStyle(
                      color: Colors.blue,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                    )
                  : const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w100,
                      fontSize: 25,
                      letterSpacing: 2,
                    ),
              duration: const Duration(seconds: 10),
              curve: Curves.elasticOut,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Ink(
            decoration: const ShapeDecoration(
              color: Colors.deepPurple,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(Icons.bluetooth),
              iconSize: 40,
              color: Colors.white,
              onPressed: () {
                setState(() {
                  selected = !selected;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
