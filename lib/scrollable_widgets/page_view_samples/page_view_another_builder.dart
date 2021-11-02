import 'package:flutter/material.dart';

class PageViewAnotherBuilder extends StatelessWidget {
  const PageViewAnotherBuilder({Key? key}) : super(key: key);

  static const String _title = 'PageView Simple Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: PageViewAnotherBuilderHome(),
    );
  }
}

class PageViewAnotherBuilderHome extends StatefulWidget {
  const PageViewAnotherBuilderHome({Key? key}) : super(key: key);

  @override
  _PageViewAnotherBuilderHomeState createState() =>
      _PageViewAnotherBuilderHomeState();
}

class _PageViewAnotherBuilderHomeState
    extends State<PageViewAnotherBuilderHome> {
  double thisPage = 0.0;
  void _goForward() {
    setState(() {
      thisPage = thisPage + 1.0;
    });
  }

  void _goBackward() {
    setState(() {
      thisPage = thisPage - 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView Simple Sample'),
      ),
      body: PageView.builder(
        itemCount: 2,
        itemBuilder: (context, position) {
          Color color;
          if (position == thisPage.floor()) {
            color = Colors.pinkAccent;
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  color: color,
                  child: const Text(
                    "Page One",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 120.0,
                      fontFamily: 'Allison',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: _goForward,
                  child: const Text(
                    "Go Forward",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 90.0,
                      fontFamily: 'Allison',
                    ),
                  ),
                )
              ],
            );
          } else {
            color = Colors.greenAccent;
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  color: color,
                  child: const Text(
                    "Page Two",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 120.0,
                      fontFamily: 'Allison',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: _goBackward,
                  child: const Text(
                    "Go Backward",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 90.0,
                      fontFamily: 'Allison',
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
