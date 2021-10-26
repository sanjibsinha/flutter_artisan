import 'package:flutter/material.dart';

class PageViewBuilderSampleStateful extends StatelessWidget {
  const PageViewBuilderSampleStateful({Key? key}) : super(key: key);

  static const String _title = 'PageView Simple Complex';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: PageViewBuilderStatefulHome(),
    );
  }
}

class PageViewBuilderStatefulHome extends StatefulWidget {
  const PageViewBuilderStatefulHome({Key? key}) : super(key: key);

  @override
  _PageViewBuilderStatefulHomeState createState() =>
      _PageViewBuilderStatefulHomeState();
}

class _PageViewBuilderStatefulHomeState
    extends State<PageViewBuilderStatefulHome> {
  PageController pageController = PageController();
  var thisPage = 0.0;
  @override
  Widget build(BuildContext context) {
    pageController.addListener(() {
      setState(() {
        thisPage = pageController.page!;
      });
    });
    return PageView.builder(
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
    );
  }
}
