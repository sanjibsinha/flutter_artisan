import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '/models/counter.dart';

class ProviderSampleOne extends StatelessWidget {
  const ProviderSampleOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProviderSampleOneHome(),
    );
  }
}

class ProviderSampleOneHome extends StatelessWidget {
  const ProviderSampleOneHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Counter counter = Provider.of<Counter>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              child: Text(
                'You have pressed this ${counter.count} times!',
                style: const TextStyle(
                  fontSize: 100,
                  fontFamily: 'Allison',
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => counter.increment(),
              child: const Text(
                'Press to Increment',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => counter.decrement(),
              child: const Text(
                'Press to Decrement',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
