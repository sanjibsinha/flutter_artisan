import 'package:flutter/material.dart';

void main() {
  runApp(
    const OurFirstApp(),
  );
}

class OurFirstApp extends StatelessWidget {
  const OurFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(5),
        child: const Text(
          'Wlcome to our first flutter application',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
