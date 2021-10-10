import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextMaterial extends StatelessWidget {
  const RichTextMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rich Text Examples',
      home: const RichTextScaffold(),
      routes: {
        AnotherRicTextPage.routename: (context) => const AnotherRicTextPage(),
      },
    );
  }
}

class RichTextScaffold extends StatelessWidget {
  const RichTextScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich text examples'),
      ),
      body: const RichTextExample(),
    );
  }
}

class RichTextExample extends StatelessWidget {
  const RichTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: 'Tap ....',
              style: const TextStyle(
                fontSize: 30.0,
                color: Colors.blue,
              ),
              children: [
                TextSpan(
                  text: 'this link to go to another RichText example page...',
                  style: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.red,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AnotherRicTextPage(),
                        ),
                      );
                    },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {},
            child: RichText(
              text: const TextSpan(
                text: 'Share',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnotherRicTextPage extends StatelessWidget {
  const AnotherRicTextPage({Key? key}) : super(key: key);
  static const routename = '/another';

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: 'Tap ...',
              style: const TextStyle(
                fontSize: 30.0,
                color: Colors.blue,
              ),
              children: [
                TextSpan(
                  text: 'this link to back to the page from where you came...',
                  style: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.red,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pop(context);
                    },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {},
            child: RichText(
              text: const TextSpan(
                text: 'Share',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
