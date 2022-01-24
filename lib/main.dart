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
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
              child: AnimatedAlign(
                alignment:
                    selected ? Alignment.topCenter : Alignment.bottomCenter,
                duration: const Duration(seconds: 20),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.yellow,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.purple.shade300,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
                duration: const Duration(seconds: 20),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.green.shade600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.orange,
              child: AnimatedAlign(
                alignment:
                    selected ? Alignment.bottomCenter : Alignment.topCenter,
                duration: const Duration(seconds: 20),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.blue.shade600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.purple.shade300,
              child: AnimatedAlign(
                alignment: selected ? Alignment.bottomLeft : Alignment.topRight,
                duration: const Duration(seconds: 20),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.green.shade600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
