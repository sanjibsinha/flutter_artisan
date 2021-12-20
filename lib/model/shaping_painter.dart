import 'package:flutter/material.dart';

class ShapingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    /// setting the paint color greyish
    /// so it could cover the lower half of the screen
    ///
    paint.color = Colors.black12;

    /// Creating a rectangle with size and width same as the canvas
    /// It'll be going to cover the whole screen
    ///
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);

    /// Drawing the rectangle using the paint
    ///
    canvas.drawRect(rect, paint);

    /// Covering the upper half of the rectangle
    ///
    paint.color = Colors.purpleAccent;
    // Firstly, creating a path to form the shape
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    // Secondly, closing the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
    // Setting the color property of the paint
    paint.color = Colors.white;
    // Center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 2);
    // Finally, drawing the circle with center having radius 95.0
    canvas.drawCircle(center, 95.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
