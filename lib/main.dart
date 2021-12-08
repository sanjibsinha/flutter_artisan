import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:provider/provider.dart';
import '/models/global_green_scheme.dart';

/// pushing to git branch color scheme

void main() {
  runApp(
    /// Providers are above [Root App] instead of inside it, so that tests
    /// can use [Root App] while mocking the providers
    MultiProvider(
      providers: [
        Provider<GlobalGreenScheme>(
          create: (context) => GlobalGreenScheme(),
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
        Provider.of<GlobalGreenScheme>(context).globalTheme;
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
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Save The Planet',
              style: Theme.of(context).textTheme.headline1,
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(
                    'Plant Tress and reduce Carbon Emission.',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Text(
                    'Would you like to approve of this message?',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Approve'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ExploreNature',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      drawer: const Drawer(
        child: SingleChildScrollView(
          child: SafeArea(
            child: AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: FlutterLogo(),
              applicationName: 'ExploreNature',
              applicationVersion: '0.0.1',
              applicationLegalese: '@explorenature.com',
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
              child: Center(
                child: Text(
                  'ExploreNature is an Educational App.'
                  ' Plant more trees to Save the Climate and Earth.',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: 120,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2021/11/13/23/06/tree-6792528_960_720.jpg',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: 120,
                      child: Text(
                        'Take Action ',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: 350,
                      child: Text(
                        'Trees contribute to environment by oxygen, improving air'
                        '  quality, climate amelioration, conserving water, preserving'
                        ' soil, and supporting wildlife. During the process'
                        ' of photosynthesis, trees take in carbon dioxide and produce'
                        ' the oxygen we breathe.'
                        '  - savetree.com',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: 180,
                      height: 50,
                      child: ElevatedButton(
                        child: Text(
                          'Do You Agree?',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        onPressed: () {
                          _showMyDialog();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
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
