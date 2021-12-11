import 'package:flutter/material.dart';

void main() {
  runApp(
    const OurSecondApp(),
  );
}

class OurSecondApp extends StatelessWidget {
  const OurSecondApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'First Material App',
      debugShowCheckedModeBanner: false,
      home: OurSecondAppHome(),
    );
  }
}

class OurSecondAppHome extends StatelessWidget {
  const OurSecondAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Material App'),
      ),
      body: const OurSecondAppBody(),
    );
  }
}

class OurSecondAppBody extends StatelessWidget {
  const OurSecondAppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Here we're going to use basic widgets
    /// such as, Text, Container, Row, Column, etc.
    ///
    return Column(
      children: [
        Center(
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'ID',
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Name',
                  textAlign: TextAlign.left,
                ),
              ),
              const Expanded(
                child: Text(
                  'Phone Number',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Gender',
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Country',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '1',
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'John',
                  textAlign: TextAlign.left,
                ),
              ),
              const Expanded(
                child: Text(
                  '123645',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Male',
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Germany',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  '2',
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Jenifer',
                  textAlign: TextAlign.left,
                ),
              ),
              const Expanded(
                child: Text(
                  '652341',
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Female',
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'France',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
