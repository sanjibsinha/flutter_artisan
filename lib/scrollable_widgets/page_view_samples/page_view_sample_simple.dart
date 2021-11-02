import 'package:flutter/material.dart';

class PageViewSampleSimple extends StatelessWidget {
  const PageViewSampleSimple({Key? key}) : super(key: key);

  static const String _title = 'PageView Simple Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: PageViewSampleSimpleHome(),
    );
  }
}

class PageViewSampleSimpleHome extends StatelessWidget {
  const PageViewSampleSimpleHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView Simple Sample'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Colors.green,
            child: const Text(
              'Page One',
              style: TextStyle(
                fontFamily: 'Allison',
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: const Text(
              'Page Two',
              style: TextStyle(
                fontFamily: 'Allison',
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            color: Colors.deepPurple,
            child: const Text(
              'Page Three',
              style: TextStyle(
                fontFamily: 'Allison',
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
