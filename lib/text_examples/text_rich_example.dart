import 'package:flutter/material.dart';

class TextRichExample extends StatelessWidget {
  const TextRichExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Text Rich example',
      home: TextRichHome(),
    );
  }
}

class TextRichHome extends StatelessWidget {
  const TextRichHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text rich example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            const Text.rich(
              TextSpan(
                text: 'Flutter',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ), // default text style
                children: <TextSpan>[
                  TextSpan(
                    text: ' is',
                    style: TextStyle(
                      fontSize: 40,

                      /// if we don't declare color explicitly,
                      /// it will take default color blue
                      color: Colors.black38,

                      /// if we use the same fontFamily, that will also
                      /// make it italic, bold and blue
                      //fontFamily: 'Allison',
                    ),
                  ),
                  TextSpan(
                    text: ' beautiful ',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Allison',
                      fontSize: 60,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text.rich(
              TextSpan(
                text: 'My name is ',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                children: <InlineSpan>[
                  WidgetSpan(
                    alignment: PlaceholderAlignment.baseline,
                    baseline: TextBaseline.alphabetic,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 100),
                      child: const TextField(),
                    ),
                  ),
                  const TextSpan(
                    text: '.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
