// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:flutter/material.dart';
import 'package:flutter_artisan/models/counter.dart';
import 'package:provider/provider.dart';

/// This is a reimplementation of the default Flutter application using provider + [ChangeNotifier].

class ProviderSampleFour extends StatelessWidget {
  const ProviderSampleFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProviderSampleFourHome(),
    );
  }
}

class ProviderSampleFourHome extends StatelessWidget {
  const ProviderSampleFourHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Home page building');
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Selector<Counter, int>(
              selector: (_, provider) => provider.count,
              builder: (context, secondValue, child) {
                print('Building first value');
                return Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'You pressed $secondValue times',
                    style: const TextStyle(
                      fontSize: 60,
                      fontFamily: 'Allison',
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                );
              },
            ),
            Selector<Counter, int>(
              selector: (_, provider) => provider.num,
              builder: (context, secondValue, child) {
                print('Building second value');
                return Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'You pressed $secondValue times',
                    style: const TextStyle(
                      fontSize: 60,
                      fontFamily: 'Allison',
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 5,
            ),
            const SelectorFirstMethod(),
            const SizedBox(
              height: 5,
            ),
            const SelectorSecondMethod(),
          ],
        ),
      ),
    );
  }
}

class SelectorSecondMethod extends StatelessWidget {
  const SelectorSecondMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Counter second method building');
    return ElevatedButton(
      onPressed: context.select((Counter c) => c.addOne),
      child: const Text(
        'Increment second value',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}

class SelectorFirstMethod extends StatelessWidget {
  const SelectorFirstMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Counter first method building');
    return ElevatedButton(
      onPressed: context.select((Counter c) => c.increment),
      child: const Text(
        'Increment first value',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
