import 'package:flutter/material.dart';

class ElevatedButtonExample extends StatefulWidget {
  const ElevatedButtonExample({Key? key}) : super(key: key);

  @override
  _ElevatedButtonExampleState createState() => _ElevatedButtonExampleState();
}

class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ElevatedButton Examples'),
        ),
        body: Column(
          children: [
            const Text(
              'First ElevatedButton Example',
              style: TextStyle(fontSize: 30.0),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.deepPurple;
                    }
                    return Colors.blue;
                  },
                ),
              ),
              child: const Text(
                'First ElevatedButton',
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Second ElevatedButton Example: ',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              child: const Text('Elevated Button'),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.all(50),
                ),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
