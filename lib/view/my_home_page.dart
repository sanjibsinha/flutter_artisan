import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '/model/counter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const String title = 'Counter';

  @override
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: customAppBar(title),
      body: CustomPaint(
        painter: PinkPainter(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'You have pushed the FISH this many times:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade100,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '${counter.counter}',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.incremenet();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: Colors.pink.shade200,
      ),
    );
  }

  AppBar customAppBar(String title) {
    return AppBar(
      centerTitle: true,
      //backgroundColor: Colors.grey[400],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink,
              Colors.grey,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      //elevation: 20,
      titleSpacing: 80,
      leading: const Icon(Icons.menu),
      title: Text(
        title,
        textAlign: TextAlign.left,
      ),
      actions: [
        buildIcons(
          const Icon(Icons.add_a_photo),
        ),
        buildIcons(
          const Icon(
            Icons.notification_add,
          ),
        ),
        buildIcons(
          const Icon(
            Icons.settings,
          ),
        ),
        buildIcons(
          const Icon(Icons.search),
        ),
      ],
    );
  }

  IconButton buildIcons(Icon icon) {
    return IconButton(
      onPressed: () {},
      icon: icon,
    );
  }
}

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
