import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material Design'),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: null,
                child: const Text(
                  'Text Button Disabled',
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Text Button Enabled',
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
