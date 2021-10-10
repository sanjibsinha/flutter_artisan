import 'package:flutter/material.dart';

class TextRichExample extends StatelessWidget {
  const TextRichExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        title: Text('Text rich example'),
      ),
      body: Center(
        child: Text.rich(
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
      ),
    );
  }
}
