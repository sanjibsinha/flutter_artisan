import 'package:flutter/material.dart';

import 'show_cirular_count_down_timer.dart';

class CountDownTimerApp extends StatelessWidget {
  const CountDownTimerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ShowCircularCountDownTimer(),
      theme: ThemeData.light(),
    );
  }
}
