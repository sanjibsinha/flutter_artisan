import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Examples in Flutter',
      home: TextExampleHome(),
    );
  }
}

class TextExampleHome extends StatelessWidget {
  const TextExampleHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Examples in Flutter'),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
