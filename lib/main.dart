import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:provider/provider.dart';
import '/models/global_pink_theme.dart';

/// pushing to git branch color scheme

void main() {
  runApp(
    /// Providers are above [Root App] instead of inside it, so that tests
    /// can use [Root App] while mocking the providers
    MultiProvider(
      providers: [
        Provider<GlobalTheme>(
          create: (context) => GlobalTheme(),
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
    final ThemeData globalTheme = Provider.of<GlobalTheme>(context).globalTheme;
    return MaterialApp(
      title: 'About Dialog Sample',
      debugShowCheckedModeBanner: false,
      home: const AboutListTileBody(),
      theme: globalTheme,
    );
  }
}

class AboutListTileBody extends StatelessWidget {
  const AboutListTileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sanjibsinha.com'),
      ),
      drawer: const Drawer(
        child: SingleChildScrollView(
          child: SafeArea(
            child: AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: FlutterLogo(),
              applicationName: 'sanjibsinha.com',
              applicationVersion: '0.0.1',
              applicationLegalese: 'CopyLeft sanjibsinha.com',
              aboutBoxChildren: [
                SizedBox(height: 30),
                AboutSanjibSinha(),
              ],
            ),
          ),
        ),
      ),
      body: Center(
          child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            child: Text(
              'This Flutter Application is for Learning purpose.'
              ' Learn to build from Scratch.',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Wrap(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                child: Text(
                  'Flutter :',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                child: Text(
                  'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase. First described in 2015, Flutter was released in May 2017. - Wikipedia',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            width: 50,
            height: 50,
            child: ElevatedButton(
              child: const Text('View License Pages'),
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: const FlutterLogo(),
                  applicationName: 'sanjibsinha.com',
                  applicationVersion: '0.0.1',
                  applicationLegalese: 'CopyLeft sanjibsinha.com',
                  children: [
                    const SizedBox(height: 30),
                    const AboutSanjibSinha(),
                  ],
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}

class AboutSanjibSinha extends StatelessWidget {
  const AboutSanjibSinha({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              style: Theme.of(context).textTheme.bodyText1,
              text: 'sanjibsinha.com is a learning place for beginners. '
                  'Learn how to build Flutter applications for mobile, web, and desktop '
                  'from a single codebase. Get updated articles on Flutter at '),
          TextSpan(
              style: Theme.of(context).textTheme.caption,
              text: 'https://sanjibsinha.com'),
          TextSpan(style: Theme.of(context).textTheme.bodyText1, text: '.'),
        ],
      ),
    );
  }
}
