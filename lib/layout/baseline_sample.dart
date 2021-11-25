import 'package:flutter/material.dart';

class BaselineSample extends StatelessWidget {
  const BaselineSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Baseline Sample',
      debugShowCheckedModeBanner: false,
      home: BaselineSampleHomme(),
    );
  }
}

class BaselineSampleHomme extends StatelessWidget {
  const BaselineSampleHomme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baseline Sample'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Baseline(
                baseline: 0,
                baselineType: TextBaseline.alphabetic,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Baseline(
                baseline: 50,
                baselineType: TextBaseline.alphabetic,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Baseline(
                baseline: 110,
                baselineType: TextBaseline.alphabetic,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
