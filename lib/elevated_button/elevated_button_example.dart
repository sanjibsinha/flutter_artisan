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
          title: Text('ElevatedButton Examples'),
        ),
        body: Container(
          child: Column(
            children: [
              Text(
                'First ElevatedButton Example',
                style: TextStyle(fontSize: 30.0),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.deepPurple;
                      return Colors.blue;
                    },
                  ),
                ),
                child: Text(
                  'First ElevatedButton',
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Second ElevatedButton Example: ',
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                child: Text('Elevated Button'),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(50),
                  ),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
