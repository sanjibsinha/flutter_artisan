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
      body: Column(
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
                      // Use SomeExpensiveWidget here, without rebuilding every time.
                      if (child != null) child,
                      Text(
                        'You pressed: ${cart.count} times!',
                        style: const TextStyle(
                          fontFamily: 'Allison',
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // Build the expensive widget here.
                  child: const HumongousWidget(),
                )),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      'First Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Second Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  height: 60,
                  thickness: 15,
                  indent: 20,
                  endIndent: 0,
                ),
                Column(
                  children: const [
                    Text(
                      'First Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Second Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Center(
            /// building another humongous widget tree
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      'First Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Second Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
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
                      'First Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Second Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue,
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(
                5.0,
              ),
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
    return Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(30),
      child: const Text(
        'data',
        style: TextStyle(
          fontFamily: 'Allison',
          fontSize: 60,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }
}
