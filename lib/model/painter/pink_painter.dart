import 'package:flutter/material.dart';

class PinkPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    /// creating path object that will paint the background
    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));

    /// setting color for the background
    paint.color = Colors.pink.shade800;
    canvas.drawPath(mainBackground, paint);

    /// creating another Path object that will start painting
    Path ovalPath = Path();

    ovalPath.moveTo(0, height * 0.1);

    ovalPath.quadraticBezierTo(
        width * 0.45, height * 0.35, width * 0.51, height * 0.8);

    ovalPath.quadraticBezierTo(width * 0.58, height * 0.8, width * 0.2, height);

    ovalPath.lineTo(0, height);

    ovalPath.close();

    paint.color = Colors.pink.shade500;
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
