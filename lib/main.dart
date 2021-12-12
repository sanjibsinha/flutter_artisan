import 'package:flutter/material.dart';

void main() {
  runApp(
    const OurThirdApp(),
  );
}

class OurThirdApp extends StatelessWidget {
  const OurThirdApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'First Material App',
      debugShowCheckedModeBanner: false,
      home: OurThirdAppHome(),
    );
  }
}

class OurThirdAppHome extends StatelessWidget {
  const OurThirdAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Material App'),
      ),
      body: const OurThirdAppBody(),
    );
  }
}

class OurThirdAppBody extends StatelessWidget {
  const OurThirdAppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Here we're going to use basic widgets
    /// such as, Text, Container, Row, Column, etc.
    ///
    return Column(
      children: const [
        ColumnOne(),
        ColumnThree(),
        ColumnTwo(),
      ],
    );
  }
}

class ModelContainer extends StatelessWidget {
  const ModelContainer({
    Key? key,
    required this.modelText,
  }) : super(key: key);

  final Text modelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.amber,
      child: modelText,
    );
  }
}

class ColumnOne extends StatelessWidget {
  const ColumnOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: const [
          ModelContainer(
            modelText: Text('ID'),
          ),
          ModelContainer(
            modelText: Text('Name'),
          ),
          ModelContainer(
            modelText: Text('Phone'),
          ),
          ModelContainer(
            modelText: Text('Gender'),
          ),
          ModelContainer(
            modelText: Text('Country'),
          ),
        ],
      ),
    );
  }
}

class ColumnTwo extends StatelessWidget {
  const ColumnTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: const [
          ModelContainer(
            modelText: Text('2'),
          ),
          ModelContainer(
            modelText: Text('Juliet'),
          ),
          ModelContainer(
            modelText: Text('100023'),
          ),
          ModelContainer(
            modelText: Text('Female'),
          ),
          ModelContainer(
            modelText: Text('Britain'),
          ),
        ],
      ),
    );
  }
}

class ColumnThree extends StatelessWidget {
  const ColumnThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: const [
          ModelContainer(
            modelText: Text('1'),
          ),
          ModelContainer(
            modelText: Text('Romeo'),
          ),
          ModelContainer(
            modelText: Text('489023'),
          ),
          ModelContainer(
            modelText: Text('Male'),
          ),
          ModelContainer(
            modelText: Text('France'),
          ),
        ],
      ),
    );
  }
}
