import 'package:flutter/material.dart';
import 'package:flutter_artisan/models/countering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateNotifierProviderAppSample extends StatelessWidget {
  const StateNotifierProviderAppSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StateNotifierProviderHome(),
    );
  }
}

final counterProvider =
    StateNotifierProvider<Countering, int>((ref) => Countering());

class StateNotifierProviderHome extends ConsumerWidget {
  const StateNotifierProviderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          child: Text(
            '$counter',
            style: const TextStyle(
              fontSize: 60,
              color: Colors.red,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        tooltip: 'Press to Increment',
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
