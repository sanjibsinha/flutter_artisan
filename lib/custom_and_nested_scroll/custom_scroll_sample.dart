import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_artisan/models/counter.dart';

class CustomScrollSample extends StatelessWidget {
  const CustomScrollSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CustomScroll Sample',
      home: CustomScrollHome(),
    );
  }
}

class CustomScrollHome extends StatelessWidget {
  const CustomScrollHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: const Text(
              'It will collapse',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            background: Image.network(
              'https://cdn.pixabay.com/photo/2016/09/10/17/18/book-1659717_960_720.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'You have pushed the button this many times:',
                style: TextStyle(
                  fontFamily: 'Allison',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Count(),
            ],
          ),
        ),
        FloatingActionButton(
          key: const Key('increment_floatingActionButton'),
          onPressed: () => context.read<Counter>().increment(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().count}',
      key: const Key('counterState'),
      style: const TextStyle(
        fontFamily: 'Allison',
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
