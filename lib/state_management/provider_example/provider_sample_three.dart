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
    print('Home page building');
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: const SelectorValue(),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: const SelectorAnotherValue(),
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
      //onPressed: () => context.read<Counter>().decrement(),
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
      //onPressed: () => context.read<Counter>().increment(),
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

class SelectorValue extends StatelessWidget {
  const SelectorValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Counter first value building');
    return Text(
      'You pressed this ${context.select((Counter c) => c.count)} times.',
      style: const TextStyle(
        fontSize: 45,
        fontFamily: 'Allison',
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }
}

class SelectorAnotherValue extends StatelessWidget {
  const SelectorAnotherValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Counter second value building');
    return Text(
      'You pressed this ${context.select((Counter c) => c.num)} times.',
      style: const TextStyle(
        fontSize: 45,
        fontFamily: 'Allison',
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }
}
