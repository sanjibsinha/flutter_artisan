import 'package:flutter/material.dart';
import 'controllers/app_bar_widget.dart';
//import 'controllers/text_button_widget.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarWidget(),
    ),
  );
}
