import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeScale with ChangeNotifier {
  double scale = 1.0;
  void changeScale() {
    scale = scale == 1.0 ? 3.0 : 1.0;
    notifyListeners();
  }
}

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChangeScale()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Animated Scale';

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
    final ChangeScale scale = Provider.of<ChangeScale>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          child: const Text('Scale Image'),
          onPressed: scale.changeScale,
        ),
        Padding(
          padding: const EdgeInsets.all(50),
          child: AnimatedScale(
            scale: scale.scale,
            duration: const Duration(seconds: 2),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 100,
                height: 100,
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
