import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangePadding with ChangeNotifier {
  double padValue = 1.0;
  void changePadding() {
    padValue = padValue == 0.0 ? 100.0 : 0.0;
    notifyListeners();
  }
}

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChangePadding()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Animated Padding';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const AnimatedPaddingExample(),
      ),
    );
  }
}

class AnimatedPaddingExample extends StatelessWidget {
  const AnimatedPaddingExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChangePadding _padValueChange = Provider.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedPadding(
          padding: EdgeInsets.all(_padValueChange.padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            color: Colors.blue,
          ),
        ),
        Text('Padding: ${_padValueChange.padValue}'),
        ElevatedButton(
            child: const Text('Change padding'),
            onPressed: () {
              _padValueChange.changePadding();
            }),
      ],
    );
  }
}
