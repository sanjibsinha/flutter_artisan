import 'package:flutter/material.dart';

class MaterialStateExamle extends StatefulWidget {
  const MaterialStateExamle({Key? key}) : super(key: key);

  @override
  _MaterialStateExamleState createState() => _MaterialStateExamleState();
}

class _MaterialStateExamleState extends State<MaterialStateExamle> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color changeColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.deepOrange;
    }

    return MaterialApp(
      title: 'MaterialState Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MaterialState Example'),
        ),
        body: Column(
          children: [
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith(changeColor),
              ),
              onPressed: () {},
              child: const Text('TextButton'),
            ),
            const SizedBox(
              height: 10,
            ),
            Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(changeColor),
              value: isChecked,
              onChanged: (bool? value) {
                setState(
                  () {
                    isChecked = value!;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
