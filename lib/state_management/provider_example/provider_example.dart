import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderAppSample extends StatelessWidget {
  const ProviderAppSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProviderHome(),
    );
  }
}

final referenceValue = StateProvider((ref) => 0);

class ProviderHome extends ConsumerWidget {
  const ProviderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterWatch = ref.watch(referenceValue);
    final counterRead = ref.read(referenceValue);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              child: Text(
                '${counterWatch.state}',
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
              onPressed: () => counterRead.state++,
              child: const Text(
                'Press to Increment',
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
