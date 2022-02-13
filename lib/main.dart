import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Text text = const Text('This is Text Widget');
    Scaffold scaffold = const Scaffold();
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                child: Text(
                  'First Row',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Second Row',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
          GestureDetector(
            child: Text(
              'It\'s a Text Widget. Below an Image Widget.',
              style: Theme.of(context).textTheme.headline5,
            ),
            onTap: () {
              /* print(text.runtimeType);
              print(scaffold.runtimeType); */
            },
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            width: 250,
            height: 250,
            child: Image.network(
              'https://cdn.pixabay.com/photo/2021/11/13/23/06/tree-6792528_960_720.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
