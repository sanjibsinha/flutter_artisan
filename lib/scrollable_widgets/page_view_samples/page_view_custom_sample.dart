import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/counter.dart';

class PageViewCustomSimple extends StatelessWidget {
  const PageViewCustomSimple({Key? key}) : super(key: key);

  static const String _title = 'PageView Custom Sample';

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
        title: const Text('PageView Custom Sample'),
      ),
      body: PageView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            Color color;
            if (index == thisPage.floor()) {
              color = Colors.yellow;
              return Container(
                color: color,
                child: const Text(
                  "First Page",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 120.0,
                    fontFamily: 'Allison',
                  ),
                ),
              );
            } else if (index == thisPage.floor() + 1) {
              color = Colors.purple;
              return Container(
                color: color,
                child: const Text(
                  "Second Page",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 120.0,
                    fontFamily: 'Allison',
                  ),
                ),
              );
            } else if (index == thisPage.floor() + 2) {
              color = Colors.white;
              return Container(
                color: color,
                child: const Text(
                  "Third Page",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 120.0,
                    fontFamily: 'Allison',
                  ),
                ),
              );
            } else {
              color = Colors.black54;
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
          childCount: 4,
        ),
      ),
    );
  }
}
