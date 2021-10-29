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

final valueProvider = Provider<int>((ref) {
  return 36;
});

final counterProvider = StateProvider((ref) => 0);

class ProviderHome extends ConsumerWidget {
  const ProviderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterWatch = ref.watch(counterProvider);
    final counterRead = ref.read(counterProvider);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'Value: ${counterWatch.state}',
              style: const TextStyle(
                fontSize: 60,
                fontFamily: 'Allison',
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => counterRead.state++,
              child: const Text(
                'Increment',
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
