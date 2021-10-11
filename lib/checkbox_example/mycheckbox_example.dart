import 'package:flutter/material.dart';

class MyCheckBoxExample extends StatefulWidget {
  const MyCheckBoxExample({Key? key}) : super(key: key);

  @override
  _MyCheckBoxExampleState createState() => _MyCheckBoxExampleState();
}

class _MyCheckBoxExampleState extends State<MyCheckBoxExample> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkbox Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Checkbox Example'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Checkbox(
                value: _value,
                onChanged: (bool? value) {
                  setState(
                    () {
                      _value = value!;
                    },
                  );
                },
                activeColor: Colors.blue,
                tristate: true,
              ),
              Switch.adaptive(
                value: _value,
                activeColor: Colors.redAccent,
                activeTrackColor: Colors.redAccent,
                onChanged: (bool? value) {
                  setState(
                    () {
                      _value = value!;
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
