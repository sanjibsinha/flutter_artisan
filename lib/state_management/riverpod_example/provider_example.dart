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
    // 1. watch the counterStateProvider
    final counterWatch = ref.watch(counterProvider);
    final counterRead = ref.read(counterProvider);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              // 2. this time we read counter.state
              'Value: ${counterWatch.state}',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () => counterRead.state++,
              child: Text(
                'Increment',
                style: const TextStyle(
                  fontSize: 60,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
