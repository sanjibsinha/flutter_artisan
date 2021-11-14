import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_artisan/models/wordpair.dart';

class ProviderSampleNine extends StatelessWidget {
  const ProviderSampleNine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProviderSampleNineHome(),
    );
  }
}

class ProviderSampleNineHome extends StatelessWidget {
  const ProviderSampleNineHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wordpairing Test'),
      ),
      body: const NineBody(),
    );
  }
}

class NineBody extends StatelessWidget {
  const NineBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building home page');
    final wordPair = WordPair.random();

    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: FirstWord(wordPair: wordPair),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const SecondWord(),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const ThirdWord(),
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

class ThirdWord extends StatelessWidget {
  const ThirdWord({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building third word');
    return Text(
      '${context.select((WordPairing w) => w.wording)}',
      style: const TextStyle(
        fontFamily: 'Allison',
        fontWeight: FontWeight.bold,
        fontSize: 60,
      ),
    );
  }
}

class SecondWord extends StatelessWidget {
  const SecondWord({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building second word');
    return Text(
      context.select((WordPairing w2) => w2.word.asSnakeCase),
      style: const TextStyle(
        fontFamily: 'Allison',
        fontWeight: FontWeight.bold,
        fontSize: 80,
      ),
    );
  }
}

class FirstWord extends StatelessWidget {
  const FirstWord({
    Key? key,
    required this.wordPair,
  }) : super(key: key);

  final WordPair wordPair;

  @override
  Widget build(BuildContext context) {
    print('Building first word');
    return Text(
      wordPair.asCamelCase,
      style: const TextStyle(
        fontFamily: 'Allison',
        fontWeight: FontWeight.bold,
        fontSize: 60,
      ),
    );
  }
}
