import 'package:flutter/material.dart';

class FirstFlutterApp extends StatelessWidget {
  const FirstFlutterApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Text(
          'Hello, Flutter!',
        ),
      ),
    );
  }
}
