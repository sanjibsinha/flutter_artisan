import 'package:flutter/material.dart';
import 'default_page.dart';
import 'first_page.dart';
import 'home_page.dart';
import 'second_page.dart';

class MaterialAppExample extends StatelessWidget {
  const MaterialAppExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily News',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Colors.blue,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => const HomePage(),
        FirstPage.routename: (ctx) => const FirstPage(),
        SecondPage.routename: (ctx) => const SecondPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => const DefaultPage(),
        );
      },
    );
  }
}
