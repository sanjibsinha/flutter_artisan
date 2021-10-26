import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/counter.dart';

class PageViewBuilderSimple extends StatelessWidget {
  const PageViewBuilderSimple({Key? key}) : super(key: key);

  static const String _title = 'PageView Simple Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: PageViewBuilderHome(),
    );
  }
}

class PageViewBuilderHome extends StatelessWidget {
  const PageViewBuilderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double thisPage = context.watch<Counter>().x;
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView Simple Sample'),
      ),
      body: PageView.builder(
        itemCount: 4,
        itemBuilder: (context, position) {
          Color color;
          if (position == thisPage.floor()) {
            color = Colors.pinkAccent;
            return Container(
              color: color,
              child: const Text(
                "First Page",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 120.0,
                  fontFamily: 'Allison',
                ),
              ),
            );
          } else if (position == thisPage.floor() + 1) {
            color = Colors.blueAccent;
            return Container(
              color: color,
              child: const Text(
                "Second Page",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 120.0,
                  fontFamily: 'Allison',
                ),
              ),
            );
          } else if (position == thisPage.floor() + 2) {
            color = Colors.deepOrangeAccent;
            return Container(
              color: color,
              child: const Text(
                "Third Page",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 120.0,
                  fontFamily: 'Allison',
                ),
              ),
            );
          } else {
            color = Colors.greenAccent;
            return Container(
              color: color,
              child: const Text(
                "Fourth Page",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 120.0,
                  fontFamily: 'Allison',
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
