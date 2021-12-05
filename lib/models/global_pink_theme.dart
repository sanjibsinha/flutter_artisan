import 'package:flutter/material.dart';

class GlobalPinkTheme {
  final globalTheme = ThemeData(
    primarySwatch: Colors.pink,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 22,
        color: pinkBrown600,
      ),
      bodyText2: TextStyle(
        color: pinkBrown900,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        backgroundColor: pinkPink50,
      ),
      caption: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: pinkPink400,
        backgroundColor: pinkBackgroundWhite,
      ),
      headline1: TextStyle(
        color: pinkErrorRed,
        fontSize: 60,
        fontFamily: 'Allison',
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        color: pinkPink300,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: pinkPink300,
      // This will control the "back" icon
      iconTheme: IconThemeData(color: Colors.red),
      // This will control action icon buttons that locates on the right
      actionsIconTheme: IconThemeData(color: pinkPink300),
      centerTitle: false,
      elevation: 15,
      titleTextStyle: TextStyle(
        color: pinkBrown600,
        fontWeight: FontWeight.bold,
        fontFamily: 'Allison',
        fontSize: 40,
      ),
    ),
  );
}

const Color pinkPink50 = Color(0xFFFEEAE6);
const Color pinkPink100 = Color(0xFFFEDBD0);
const Color pinkPink300 = Color(0xFFFBB8AC);
const Color pinkPink400 = Color(0xFFEAA4A4);

const Color pinkBrown900 = Color(0xFF442B2D);
const Color pinkBrown600 = Color(0xFF7D4F52);

const Color pinkErrorRed = Color(0xFFC5032B);

const Color pinkSurfaceWhite = Color(0xFFFFFBFA);
const Color pinkBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
