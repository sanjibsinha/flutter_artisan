import 'package:flutter/material.dart';
import '/model/painter/green_painter.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const String title = 'SignUp Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title),
      body: CustomPaint(
        painter: GreenPainter(),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'SignUp Page',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
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
              Colors.green,
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
          const Icon(Icons.search),
        ),
        buildIcons(
          const Icon(
            Icons.signal_cellular_0_bar,
          ),
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
