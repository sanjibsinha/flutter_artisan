import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class CircularCountDownTimerWidget extends StatelessWidget {
  const CircularCountDownTimerWidget({
    Key? key,
    required CountDownController controller,
  })  : _controller = controller,
        super(key: key);

  final CountDownController _controller;

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2,
      duration: 14,
      fillColor: Colors.amber,
      ringColor: Colors.white,
      controller: _controller,
      backgroundColor: Colors.white54,
      strokeWidth: 10.0,
      strokeCap: StrokeCap.round,
      isTimerTextShown: true,
      isReverse: false,
      onComplete: () {
        //print('Completed');
      },
      textStyle: const TextStyle(fontSize: 50.0, color: Colors.black),
    );
  }
}
