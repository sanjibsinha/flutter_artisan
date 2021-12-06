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
        title: const Text('About sanjibsinha.com'),
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
        child: ElevatedButton(
          child: const Text('About sanjibsinha.com'),
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
