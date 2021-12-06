import 'package:flutter/material.dart';

class GlobalPinkTheme {
  final globalTheme = ThemeData(
    primarySwatch: Colors.pink,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 22,
        color: naplesYellow,
      ),
      bodyText2: TextStyle(
        color: maze,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        backgroundColor: yellowJasmin,
      ),
      caption: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: mango,
        backgroundColor: darkYellow,
      ),
      headline1: TextStyle(
        color: naplesYellow,
        fontSize: 60,
        fontFamily: 'Allison',
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        color: lemonYellow,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: lemonYellow,
      // This will control the "back" icon
      iconTheme: IconThemeData(color: Colors.red),
      // This will control action icon buttons that locates on the right
      actionsIconTheme: IconThemeData(color: lemonYellow),
      centerTitle: false,
      elevation: 15,
      titleTextStyle: TextStyle(
        color: musterdYello,
        fontWeight: FontWeight.bold,
        fontFamily: 'Allison',
        fontSize: 40,
      ),
    ),
  );
}

const Color yellowJasmin = Color(0x00f8de7e);
const Color khaki = Color(0x00f0e68c);
const Color lemonYellow = Color(0x00FAFA33);
const Color mango = Color(0x00F4BB44);

const Color maze = Color(0x00FBEC5D);
const Color musterdYello = Color(0x00FFDB58);

const Color naplesYellow = Color(0x00FADA5E);

const Color periDot = Color(0x00B4C424);
const Color darkYellow = Color(0x008B8000);

const defaultLetterSpacing = 0.03;
