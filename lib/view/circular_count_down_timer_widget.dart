import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter_artisan/view/final_destination.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularCountDownTimerWidget extends StatelessWidget {
  const CircularCountDownTimerWidget({
    Key? key,
    required CountDownController controller,
  })  : _countDownController = controller,
        super(key: key);

  final CountDownController _countDownController;

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 2,
      duration: 5,
      fillColor: Colors.redAccent,
      ringColor: Colors.white38,
      controller: _countDownController,
      backgroundColor: Colors.amber,
      strokeWidth: 10.0,
      strokeCap: StrokeCap.round,
      isTimerTextShown: true,
      isReverse: false,
      onComplete: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FinalDEstination(),
          ),
        );
      },
      textStyle: GoogleFonts.aclonica(
        fontSize: 70.0,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }
}
