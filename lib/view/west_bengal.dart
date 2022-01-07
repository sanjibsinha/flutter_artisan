import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WestBengal extends StatelessWidget {
  const WestBengal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('West Bengal'),
      ),
      body: Center(
        child: Hero(
            tag: 'wb',
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 350,
                  height: 350,
                  child: Image.network(
                      'https://cdn.pixabay.com/photo/2021/11/13/23/06/tree-6792528_960_720.jpg'),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: RichText(
                    text: TextSpan(
                      text: 'West Bengal ...',
                      style: const TextStyle(
                        fontSize: 30.0,
                        color: Colors.blue,
                      ),
                      children: [
                        TextSpan(
                          text: ' A land where I was born and fell in love ...'
                              'with learning Flutter. Why? Because there are '
                              ' so many trees and butterflies around us ...',
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.red,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            },
                        ),
                        TextSpan(
                          text: ' Read More ...',
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.green,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
