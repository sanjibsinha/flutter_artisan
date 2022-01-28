import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeRotation with ChangeNotifier {
  double turns = 1.0;
  void changeRotation() {
    turns = turns += 1.0 / 4.0;
    notifyListeners();
  }
}

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChangeRotation()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Animated Rotation';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ChangeRotation turns = Provider.of<ChangeRotation>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          child: const Text('turns Image'),
          onPressed: turns.changeRotation,
        ),
        Padding(
          padding: const EdgeInsets.all(50),
          child: AnimatedRotation(
            turns: turns.turns,
            duration: const Duration(seconds: 1),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 250,
                height: 250,
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2021/11/13/23/06/tree-6792528_960_720.jpg'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
