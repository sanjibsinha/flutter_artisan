import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/counter.dart';

class PageViewBuilderSample extends StatelessWidget {
  const PageViewBuilderSample({Key? key}) : super(key: key);

  static const String _title = 'PageView Simple Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: PageViewBuilderHome(),
    );
  }
}

class PageViewBuilderHome extends StatelessWidget {
  PageViewBuilderHome({Key? key}) : super(key: key);

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    double thisPage = context.watch<Counter>().x;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Press to change page'),
        leading: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            thisPage = pageController.page!;
            context.read<Counter>().increase();
          },
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        itemBuilder: (context, position) {
          if (position == thisPage.floor()) {
            return Transform(
              transform: Matrix4.identity()..rotateX(thisPage - position),
              child: Container(
                color: position % 2 == 0 ? Colors.blue : Colors.pink,
                child: const Center(
                  child: Text(
                    "First Page",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 120.0,
                      fontFamily: 'Allison',
                    ),
                  ),
                ),
              ),
            );
          } else if (position == thisPage.floor() + 1) {
            return Transform(
              transform: Matrix4.identity()..rotateX(thisPage - position),
              child: Container(
                color: position % 2 == 0 ? Colors.deepOrange : Colors.red,
                child: const Center(
                  child: Text(
                    "Second Page",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 120.0,
                      fontFamily: 'Allison',
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Container(
              color: position % 2 == 0 ? Colors.purpleAccent : Colors.red,
              child: const Center(
                child: Text(
                  "Third Page",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 120.0,
                    fontFamily: 'Allison',
                  ),
                ),
              ),
            );
          }
        },
        itemCount: 10,
      ),
    );
  }
}
