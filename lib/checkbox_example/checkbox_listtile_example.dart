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
          title: Text('Checkbox & CheckboxListTile'),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'A Checkbox Example: ',
                    style: TextStyle(fontSize: 17.0),
                  ),
                  Checkbox(
                    checkColor: Colors.greenAccent,
                    activeColor: Colors.red,
                    value: this.valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        this.valuefirst = value!;
                      });
                    },
                  ),
                  Checkbox(
                    value: this.valuesecond,
                    onChanged: (bool? value) {
                      setState(
                        () {
                          this.valuesecond = value!;
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
                  Text(
                    'CheckboxListTile Example',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  CheckboxListTile(
                    secondary: const Icon(Icons.home_outlined),
                    title: const Text('This is header'),
                    subtitle: const Text('This is subtitle'),
                    value: this.valuefirst,
                    onChanged: (bool? value) {
                      setState(
                        () {
                          this.valuefirst = value!;
                        },
                      );
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    secondary: const Icon(Icons.home_filled),
                    title: const Text('This is header'),
                    subtitle: Text('This is subtitle'),
                    value: this.valuesecond,
                    onChanged: (bool? value) {
                      setState(
                        () {
                          this.valuesecond = value!;
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
