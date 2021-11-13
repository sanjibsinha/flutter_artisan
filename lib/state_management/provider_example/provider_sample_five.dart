import 'package:flutter/material.dart';
import 'package:flutter_artisan/models/counter.dart';

import 'package:provider/provider.dart';

class ProviderSampleFive extends StatelessWidget {
  const ProviderSampleFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProviderSampleFiveHome(),
    );
  }
}

class ProviderSampleFiveHome extends StatelessWidget {
  const ProviderSampleFiveHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print('Home page building');
    return Scaffold(
      body: Center(
        child: ListView(
          children: const [
            FirstSelector(),
            SecondSelector(),
            SelectorFirstMethod(),
            SizedBox(
              height: 5,
            ),
            SelectorSecondMethod(),
          ],
        ),
      ),
    );
  }
}

class FirstSelector extends StatelessWidget {
  const FirstSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<Counter, int>(
      selector: (_, provider) => provider.count,
      builder: (context, firstValue, child) {
        //  print('Building first value');
        return Column(
          children: [
            const HumongousWidget(),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              child: Text(
                'You pressed $firstValue times',
                style: const TextStyle(
                  fontSize: 60,
                  fontFamily: 'Allison',
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            if (child != null) child,
          ],
        );
      },
      // Build the expensive widget here.
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        child: const ExpensiveWidget(),
      ),
    );
  }
}

class SecondSelector extends StatelessWidget {
  const SecondSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<Counter, int>(
      selector: (_, provider) => provider.num,
      builder: (context, secondValue, child) {
        //print('Building second value');
        return Column(
          children: [
            const HumongousWidget(),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              child: Text(
                'You pressed $secondValue times',
                style: const TextStyle(
                  fontSize: 60,
                  fontFamily: 'Allison',
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            if (child != null) child,
          ],
        );
      },
      // Build the expensive widget here.
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        child: const ExpensiveWidget(),
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
    //print('Counter second method building');
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
    //print('Counter first method building');
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

class HumongousWidget extends StatelessWidget {
  const HumongousWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print('Homongous widget building');
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
                height: 5,
              ),
              Text(
                'First Row of Consumer Child',
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
    //print('Expensive widget building');
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
                height: 5,
              ),
              Text(
                'First Row inside Consumer',
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
