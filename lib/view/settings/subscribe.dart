import 'package:flutter/material.dart';

class SubscribePage extends StatelessWidget {
  const SubscribePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscribe Page'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: const Text('Subscribe Page'),
        ),
      ),
    );
  }
}
