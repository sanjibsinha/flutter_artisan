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
      body: RichTextExample(),
    );
  }
}

class RichTextExample extends StatelessWidget {
  RichTextExample({Key? key}) : super(key: key);

  final TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer()
    ..onTap = () {
      debugPrint('Tapped!');
    };

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: 'Tap ',
              style: const TextStyle(
                fontSize: 30.0,
                color: Colors.blue,
              ),
              children: [
                TextSpan(
                    text: 'this link to read more...',
                    style: const TextStyle(
                      fontSize: 30.0,
                      color: Colors.red,
                    ),
                    recognizer: _tapGestureRecognizer),
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
  static const routename = '/all';

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
