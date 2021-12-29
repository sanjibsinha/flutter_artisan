import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_artisan/model/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const String title = 'Settings Buttons';

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title),
      body: CustomPaint(
        painter: PinkPainter(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Body',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == Settings.settings) {
      print('settings');
    } else if (choice == Settings.signOut) {
      print('sign out');
    } else if (choice == Settings.subscribe) {
      print('subscribe');
    }
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
          const Icon(Icons.search),
        ),
        buildIcons(
          const Icon(
            Icons.settings,
          ),
        ),
        PopupMenuButton<String>(
          onSelected: choiceAction,
          itemBuilder: (BuildContext context) {
            return Settings.choices.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
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

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: const Text('Settings Page'),
        ),
      ),
    );
  }
}
