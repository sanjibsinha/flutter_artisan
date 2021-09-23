import 'package:flutter/material.dart';
import 'controllers/text_button_widget.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material Design'),
        ),
        body: const TextButtonWidget(),
      ),
    ),
  );
}
