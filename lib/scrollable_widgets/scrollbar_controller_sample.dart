import 'package:flutter/material.dart';

/// This is the main application widget.
class ScrollbarControllerSample extends StatelessWidget {
  const ScrollbarControllerSample({Key? key}) : super(key: key);

  static const String _title = 'Scrollbar Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: ScrollbarControllerSampleHome(),
        ),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class ScrollbarControllerSampleHome extends StatefulWidget {
  const ScrollbarControllerSampleHome({Key? key}) : super(key: key);

  @override
  State<ScrollbarControllerSampleHome> createState() =>
      _ScrollbarControllerSampleHomeState();
}

/// This is the private State class that goes with ScrollbarControllerSampleHome.
class _ScrollbarControllerSampleHomeState
    extends State<ScrollbarControllerSampleHome> {
  // Generate a dummy list
  //final myProducts = List<String>.generate(10, (i) => 'Product $i');
  final ScrollController _controllerOne = ScrollController();
  final ScrollController _controllerTwo = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
            child: Scrollbar(
              isAlwaysShown: true,
              controller: _controllerOne,
              child: ListView.builder(
                controller: _controllerOne,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) => Text(
                  'item $index',
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 40.0,
                    fontFamily: 'Allison',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: Scrollbar(
              controller: _controllerTwo,
              child: ListView.builder(
                controller: _controllerTwo,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) => Text(
                  'list 2 item $index',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 40.0,
                    fontFamily: 'Allison',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
