import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';

class DropDownButtonPage extends StatefulWidget {
  const DropDownButtonPage({Key? key}) : super(key: key);

  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButtonPage> {
  var _value = "1";

  DropdownButton example() => DropdownButton<String>(
        items: [
          DropdownMenuItem(
            value: "1",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Icon(Icons.build),
                SizedBox(width: 10),
                Text(
                  'Example',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "2",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Icon(Icons.settings),
                SizedBox(width: 10),
                Text(
                  "Setting",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _value = value!;
          });
        },
        value: _value,
        isExpanded: true,
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DropDownButton Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DropDownButton Example'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: Colors.green,
                child: example(),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
