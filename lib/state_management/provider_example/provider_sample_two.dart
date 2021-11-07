import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '/models/counter.dart';

class ProviderSampleTwo extends StatelessWidget {
  const ProviderSampleTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProviderSampleTwoHome(),
    );
  }
}

class ProviderSampleTwoHome extends StatelessWidget {
  const ProviderSampleTwoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Only this widget will be rebuilt
    //final CountingTheNumber message = Provider.of<CountingTheNumber>(context);
    /// we're using Consumer widget instead of Provider.of().
    /// we've put our Consumer widget as deep as possible in the tree
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumer Example'),
      ),
      body: ListView(
        /// building a humongous widget tree
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(
                25.0,
              ),
              padding: const EdgeInsets.all(
                25.0,
              ),
              child: Consumer<Counter>(
                builder: (context, cart, child) => Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 60),
                      child: Text(
                        'You pressed: ${cart.count} times!',
                        style: const TextStyle(
                          fontFamily: 'Allison',
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 160,
                    ),
                    // Use SomeExpensiveWidget here, without rebuilding every time.
                    const ExpensiveWidget(),
                    const SizedBox(
                      height: 30,
                    ),
                    if (child != null) child,
                  ],
                ),
                // Build the expensive widget here.
                child: Container(
                  padding: const EdgeInsets.only(top: 160),
                  child: const HumongousWidget(),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Consumer<Counter>(
                builder: (context, message, _) {
                  return Column(
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          message.increment();
                        },
                        tooltip: 'Increment',
                        child: const Icon(Icons.add),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HumongousWidget extends StatelessWidget {
  const HumongousWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      /// building another humongous widget tree
      child: Wrap(
        direction: Axis.vertical,
        children: [
          Column(
            children: const [
              Text(
                'First Row of Consumer Child',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                  fontFamily: 'Allison',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Second Row of Consumer Child',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                  fontFamily: 'Allison',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 0,
          ),
          Column(
            children: const [
              Text(
                'Third Row of Consumer Child',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                  fontFamily: 'Allison',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Fourth Row of Consumer Child',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                  fontFamily: 'Allison',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ExpensiveWidget extends StatelessWidget {
  const ExpensiveWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      /// building another humongous widget tree
      child: Wrap(
        direction: Axis.vertical,
        children: [
          Column(
            children: const [
              Text(
                'First Row inside Consumer',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                  fontFamily: 'Allison',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Second Row inside Consumer',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                  fontFamily: 'Allison',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
