import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/counter.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterHomePage(),
    );
  }
}

class CounterHomePage extends StatelessWidget {
  const CounterHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Example of Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'You have ',
                style: const TextStyle(
                  fontSize: 40.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'pushed this button ...',
                    style: const TextStyle(
                      fontSize: 40.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            /// Extracted as a separate widget for performance optimization.
            /// As a separate widget, it will rebuild
            /// independently from [CounterHomePage].
            ///
            /// This is totally optional (and rarely needed).
            /// Similarly, we could also use [Consumer] or [Selector].
            Count(),
            Text(
              ' ...times.',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('increment_floatingActionButton'),

        /// Calls `context.read` instead of `context.watch`
        /// so that it does not rebuild
        /// when [Counter] changes.
        onPressed: () => context.read<Counter>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      /// Calls `context.watch` to make [Count]
      /// rebuild when [Counter] changes.
      '${context.watch<Counter>().count}',
      key: const Key('counterState'),
      style: TextStyle(
        fontFamily: 'Allison',
        fontSize: 160,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
