import 'package:flutter/material.dart';
import 'package:flutter_artisan/model/writer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Writer? selectedwriter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter SimpleDialog Example'),
      ),
      body: Center(
        child: Text(
          'Selected writer: ' +
              (selectedwriter == null ? 'Not Seleted.' : selectedwriter!.name),
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showMySimpleDialog(context);
        },
        label: Text(
          'Select a writer',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }

  void showMySimpleDialog(BuildContext context) {
    var writers = [
      Writer('Rabindranath Tagore'),
      Writer('Leo Tolstoy'),
      Writer('Ernest Hemingway'),
      Writer('George Simone'),
      Writer('James Hadley Chase'),
      Writer('Arthur Conan Doyele'),
    ];

    Future futureValue = showDialog(
      context: context,
      builder: (BuildContext context) {
        return ListView(
          //title: const Text('Select a writer:'),
          children: writers
              .map(
                (writer) => SimpleDialog(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, writer);
                      },
                      child: Text(writer.name),
                    ),
                  ],
                ),
              )
              .toList(),
        );
      },
    );

    futureValue.then(
      (writer) => {
        setState(() {
          selectedwriter = writer;
        })
      },
    );
  }
}
