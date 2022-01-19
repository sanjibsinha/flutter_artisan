import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Animated Container Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyAnimatedContainer(
              selected: selected,
              newDuration: const Duration(seconds: 2),
              src:
                  'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_960_720.jpg',
            ),
            const SizedBox(
              height: 10.0,
            ),
            MyAnimatedContainer(
              selected: selected,
              newDuration: const Duration(seconds: 10),
              src:
                  'https://cdn.pixabay.com/photo/2021/11/13/23/06/tree-6792528_960_720.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class MyAnimatedContainer extends StatelessWidget {
  const MyAnimatedContainer({
    Key? key,
    required this.selected,
    required this.newDuration,
    required this.src,
  }) : super(key: key);

  final bool selected;
  final Duration newDuration;
  final String src;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: selected ? 200.0 : 100.0,
      height: selected ? 50.0 : 100.0,
      color: selected ? Colors.indigoAccent : Colors.yellowAccent,
      alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
      duration: newDuration,
      curve: Curves.fastOutSlowIn,
      child: Image.network(src),
    );
  }
}
