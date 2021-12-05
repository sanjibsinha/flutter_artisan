import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_artisan/models/global_pink_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    /// Providers are above [Root App] instead of inside it, so that tests
    /// can use [Root App] while mocking the providers
    MultiProvider(
      providers: [
        Provider<GlobalPinkTheme>(
          create: (context) => GlobalPinkTheme(),
        )
      ],
      child: const AboutDialogHome(),
    ),
  );
}

class AboutDialogHome extends StatelessWidget {
  const AboutDialogHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData globalTheme =
        Provider.of<GlobalPinkTheme>(context).globalTheme;
    return MaterialApp(
      title: 'About Dialog Sample',
      debugShowCheckedModeBanner: false,
      home: const AboutDialogBody(),
      theme: globalTheme,
    );
  }
}

class AboutDialogBody extends StatelessWidget {
  const AboutDialogBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Dialog Sample',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: Center(
        child: TextButton(
          child: Text(
            'Show AboutDialog',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationIcon: const FlutterLogo(),
              applicationName: 'sanjibsinha.com',
              applicationVersion: '0.0.1',
              applicationLegalese: 'CopyLeft sanjibsinha.com',
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text('About Us',
                      style: Theme.of(context).textTheme.button),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
