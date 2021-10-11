import 'package:flutter/material.dart';

/// This is the main application widget.
class OutlinedButtonExample extends StatelessWidget {
  const OutlinedButtonExample({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: OutlinedButtonHome(),
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class OutlinedButtonHome extends StatelessWidget {
  const OutlinedButtonHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Click Me',
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),
            ),
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
                          Colors.red,
                        ],
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Click Me',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.red,
              side: const BorderSide(
                color: Color(0xfeffffb0),
              ),
              elevation: 40.0,
            ),
            onPressed: () {},
            child: const Text(
              'Press OutlineButton',
              style: TextStyle(
                fontFamily: 'Allison',
                fontSize: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
