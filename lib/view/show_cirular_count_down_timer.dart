import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:google_fonts/google_fonts.dart';

import 'circular_count_down_timer_widget.dart';

class ShowCircularCountDownTimer extends StatefulWidget {
  const ShowCircularCountDownTimer({Key? key}) : super(key: key);

  @override
  _ShowCircularCountDownTimerState createState() =>
      _ShowCircularCountDownTimerState();
}

class _ShowCircularCountDownTimerState extends State {
  final CountDownController _countDownController = CountDownController();

  bool _isPaused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Count Down Begins...',
          style: GoogleFonts.adventPro(
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
            color: Colors.cyan,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: CircularCountDownTimerWidget(controller: _countDownController),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            if (_isPaused) {
              _isPaused = false;

              _countDownController.resume();
            } else {
              _isPaused = true;

              _countDownController.pause();
            }
          });
        },
        icon: Icon(_isPaused ? Icons.play_arrow : Icons.pause),
        label: Text(
          _isPaused ? 'Resume' : 'Pause',
          style: GoogleFonts.laila(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
