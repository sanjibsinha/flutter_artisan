import 'package:flutter/material.dart';
import '../../model/painter/amber_painter.dart';

import '/model/settings.dart';

import 'settings.dart';
import 'signup.dart';
import 'subscribe.dart';

class SettingsHomePage extends StatefulWidget {
  const SettingsHomePage({Key? key}) : super(key: key);

  @override
  State<SettingsHomePage> createState() => _SettingsHomePageState();
}

class _SettingsHomePageState extends State<SettingsHomePage> {
  static const String title = 'Settings Buttons';

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title),
      body: CustomPaint(
        painter: AmberPainter(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Settings Home Page',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
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
              Colors.amber,
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
                                  : const SettingsHomePage();
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
