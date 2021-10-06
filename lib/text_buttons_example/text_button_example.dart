import 'package:flutter/material.dart';

class TextButtonExample extends StatelessWidget {
  const TextButtonExample({Key? key}) : super(key: key);

  static const String _title = 'Text Button Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const TextButtonHome(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class TextButtonHome extends StatelessWidget {
  const TextButtonHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 30),
            ),
            onPressed: () {},
            child: const Text('TextButton Simple'),
          ),
          const SizedBox(height: 30),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.center,
                    width: 350.00,
                    height: 350.00,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.red,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(40.0)),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.blue,
                          Colors.yellow,
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 30),
                  ),
                  onPressed: () {},
                  child: const Text('TextButton Gradient'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            style: TextButton.styleFrom(
              elevation: 40.0,
              backgroundColor: Colors.yellow,
            ),
            onPressed: () {},
            child: Text(
              'Press TextButton',
              style: TextStyle(
                fontFamily: 'Allison',
                fontSize: 50,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
