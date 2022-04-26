import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

import 'circular_count_down_timer_widget.dart';

class ShowCircularCountDownTimer extends StatefulWidget {
  const ShowCircularCountDownTimer({Key? key}) : super(key: key);

  @override
  _ShowCircularCountDownTimerState createState() =>
      _ShowCircularCountDownTimerState();
}

class _ShowCircularCountDownTimerState extends State {
  final CountDownController _controller = CountDownController();

  bool _isPause = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
        centerTitle: true,
      ),
      body: Center(
        child: CircularCountDownTimerWidget(controller: _controller),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            if (_isPause) {
              _isPause = false;

              _controller.resume();
            } else {
              _isPause = true;

              _controller.pause();
            }
          });
        },
        icon: Icon(_isPause ? Icons.play_arrow : Icons.pause),
        label: Text(_isPause ? 'Resume' : 'Pause'),
      ),
    );
  }
}
