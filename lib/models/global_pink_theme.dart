import 'package:flutter/material.dart';

/* const ColorScheme yellowColorScheme = ColorScheme(
  primary: yellowJasmin,
  primaryVariant: khaki,
  secondary: lemonYellow,
  secondaryVariant: mango,
  surface: maze,
  background: musterdYello,
  error: periDot,
  onPrimary: musterdYello,
  onSecondary: khaki,
  onSurface: lemonYellow,
  onBackground: maze,
  onError: darkYellow,
  brightness: Brightness.light,
); */

const Color yellowJasmin = Color(0x00f8de7e);
const Color khaki = Color(0x00f0e68c);
const Color lemonYellow = Color(0x00FAFA33);
const Color mango = Color(0x00F4BB44);

const Color maze = Color(0x00FBEC5D);
const Color musterdYello = Color(0x00FFDB58);

const Color naplesYellow = Color(0x00FADA5E);

const Color periDot = Color(0x00B4C424);
const Color darkYellow = Color(0x008B8000);

class GlobalTheme {
  final globalTheme = ThemeData(
    primarySwatch: Colors.brown,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 22,
        color: maze,
      ),
      bodyText2: TextStyle(
        color: darkYellow,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        backgroundColor: khaki,
      ),
      caption: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: lemonYellow,
        backgroundColor: darkYellow,
      ),
      headline1: TextStyle(
        color: periDot,
        fontSize: 60,
        fontFamily: 'Allison',
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        color: mango,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: yellowJasmin,
      // This will control the "back" icon
      iconTheme: IconThemeData(color: Colors.red),
      // This will control action icon buttons that locates on the right
      actionsIconTheme: IconThemeData(color: naplesYellow),
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
