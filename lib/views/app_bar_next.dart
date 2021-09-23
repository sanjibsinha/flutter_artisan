import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarNext extends StatelessWidget {
  const AppBarNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar Next Page'),
      ),
      body: const AppBarNextPage(),
    );
  }
}

class AppBarNextPage extends StatelessWidget {
  const AppBarNextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(
          10,
        ),
        padding: const EdgeInsets.all(
          10,
        ),
        child: const Text(
          'AppBar Next Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
