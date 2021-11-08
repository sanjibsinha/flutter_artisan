// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:flutter/material.dart';
import 'package:flutter_artisan/models/counter.dart';
import 'package:provider/provider.dart';

/// This is a reimplementation of the default Flutter application using provider + [ChangeNotifier].

class ProviderSampleThree extends StatelessWidget {
  const ProviderSampleThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProviderSampleThreeHome(),
    );
  }
}

class ProviderSampleThreeHome extends StatelessWidget {
  const ProviderSampleThreeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              child: Text(
                '${context.watch<Counter>().count}',
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
              //onPressed: () => context.read<Counter>().increment(),
              onPressed: context.select((Counter c) => c.increment),
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
              //onPressed: () => context.read<Counter>().decrement(),
              onPressed: context.select((Counter c) => c.decrement),
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
