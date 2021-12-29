import 'package:flutter/material.dart';
import 'package:flutter_artisan/model/settings.dart';

import 'model/pink_painter.dart';
import 'view/settings/settings.dart';
import 'view/settings/signup.dart';
import 'view/settings/subscribe.dart';

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
    } else if (choice == Settings.signUp) {
    } else if (choice == Settings.subscribe) {}
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
            return Settings.choices.map(
              (String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: GestureDetector(
                    child: Text(choice),
                    onTap: () {
                      choice == Settings.settings
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SettingsPage()))
                          : choice == Settings.signUp
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUpPage()))
                              : choice == Settings.subscribe
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SubscribePage()))
                                  : const MyHomePage();
                    },
                  ),
                );
              },
            ).toList();
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
