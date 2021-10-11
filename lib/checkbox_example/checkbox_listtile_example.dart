import 'package:flutter/material.dart';

class CheckboxListtileExample extends StatefulWidget {
  const CheckboxListtileExample({Key? key}) : super(key: key);

  @override
  _CheckboxListtileExampleState createState() =>
      _CheckboxListtileExampleState();
}

class _CheckboxListtileExampleState extends State<CheckboxListtileExample> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Checkbox & CheckboxListTile'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'A Checkbox Example: ',
                  style: TextStyle(fontSize: 17.0),
                ),
                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: valuefirst,
                  onChanged: (bool? value) {
                    setState(() {
                      valuefirst = value!;
                    });
                  },
                ),
                Checkbox(
                  value: valuesecond,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        valuesecond = value!;
                      },
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                const Text(
                  'CheckboxListTile Example',
                  style: TextStyle(fontSize: 20.0),
                ),
                CheckboxListTile(
                  secondary: const Icon(Icons.home_outlined),
                  title: const Text('This is header'),
                  subtitle: const Text('This is subtitle'),
                  value: valuefirst,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        valuefirst = value!;
                      },
                    );
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: const Icon(Icons.home_filled),
                  title: const Text('This is header'),
                  subtitle: const Text('This is subtitle'),
                  value: valuesecond,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        valuesecond = value!;
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
