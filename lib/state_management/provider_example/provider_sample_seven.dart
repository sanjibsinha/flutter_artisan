import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_artisan/models/wordpair.dart';

class ProviderSampleSeven extends StatelessWidget {
  const ProviderSampleSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProviderSampleSevenHome(),
    );
  }
}

class ProviderSampleSevenHome extends StatelessWidget {
  const ProviderSampleSevenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wordpairing Test'),
      ),
      body: const SevenBody(),
    );
  }
}

class SevenBody extends StatelessWidget {
  const SevenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    final WordPairing word = Provider.of<WordPairing>(context, listen: false);
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          child: Text(
            wordPair.asCamelCase,
            style: const TextStyle(
              fontFamily: 'Allison',
              fontWeight: FontWeight.bold,
              fontSize: 80,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          child: Text(
            word.word.asSnakeCase,
            style: const TextStyle(
              fontFamily: 'Allison',
              fontWeight: FontWeight.bold,
              fontSize: 80,
            ),
          ),
        ),
      ],
    );
  }
}
