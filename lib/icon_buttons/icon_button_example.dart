import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  const IconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Iconbutton Example',
      home: IconButtonExample(),
    );
  }
}

Color colorWhite = Colors.white;

class IconButtonExample extends StatefulWidget {
  const IconButtonExample({Key? key}) : super(key: key);

  @override
  _IconButtonExampleState createState() => _IconButtonExampleState();
}

class _IconButtonExampleState extends State<IconButtonExample> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IconButton Example'),
      ),
      body: ListView(
        children: <Widget>[
          Ink(
            decoration: const ShapeDecoration(
              color: Colors.redAccent,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.directions_transit,
              ),
              tooltip: 'Good, bad and ugly',
              iconSize: 50,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          IconButton(
            icon: const Icon(Icons.h_mobiledata_outlined),
            tooltip: 'Hover and change color to green!',
            color: Colors.grey,
            highlightColor: Colors.red,
            hoverColor: Colors.green,
            focusColor: Colors.purple,
            splashColor: Colors.yellow,
            disabledColor: Colors.amber,
            iconSize: 48,
            onPressed: () {
              setState(() {
                _isPressed = !_isPressed;
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'It is pressed : $_isPressed',
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
