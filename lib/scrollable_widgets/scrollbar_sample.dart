import 'package:flutter/material.dart';

/// This is the main application widget.
class ScrollbarSample extends StatelessWidget {
  const ScrollbarSample({Key? key}) : super(key: key);

  static const String _title = 'Scrollbar Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: ScrollbarSampleHome(),
        ),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class ScrollbarSampleHome extends StatefulWidget {
  const ScrollbarSampleHome({Key? key}) : super(key: key);

  @override
  State<ScrollbarSampleHome> createState() => _ScrollbarSampleHomeState();
}

/// This is the private State class that goes with ScrollbarSampleHome.
class _ScrollbarSampleHomeState extends State<ScrollbarSampleHome> {
  // Generate a dummy list
  final myProducts = List<String>.generate(10, (i) => 'Product $i');
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: [
            SizedBox(
              width: constraints.maxWidth / 2,
              child: Scrollbar(
                isAlwaysShown: true,
                child: ListView.builder(
                  itemCount: myProducts.length,
                  itemBuilder: (context, index) {
                    return Card(
                      //key: UniqueKey(),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          myProducts[index],
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 40.0,
                            fontFamily: 'Allison',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              width: constraints.maxWidth / 2,
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'A Scrollbar Sample on our left',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
