import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_artisan/models/wordpair.dart';

class ProviderSampleEight extends StatelessWidget {
  const ProviderSampleEight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProviderSampleEightHome(),
    );
  }
}

class ProviderSampleEightHome extends StatelessWidget {
  const ProviderSampleEightHome({Key? key}) : super(key: key);

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
    final word = Provider.of<WordPairing>(context, listen: false);
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Text(
            wordPair.asCamelCase,
            style: const TextStyle(
              fontFamily: 'Allison',
              fontWeight: FontWeight.bold,
              fontSize: 60,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Text(
            word.word.asSnakeCase,
            style: const TextStyle(
              fontFamily: 'Allison',
              fontWeight: FontWeight.bold,
              fontSize: 80,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Text(
            context.watch<WordPairing>().wording.toString(),
            style: const TextStyle(
              fontFamily: 'Allison',
              fontWeight: FontWeight.bold,
              fontSize: 60,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: context.read<WordPairing>().changeWord,
          child: const Text(
            'Change Word',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }
}
