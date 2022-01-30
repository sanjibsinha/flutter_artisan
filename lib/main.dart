import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangePosition with ChangeNotifier {
  Offset offset = Offset.zero;
  void changePositionUp() {
    offset = offset -= const Offset(0, 1);
    notifyListeners();
  }

  void changePositionDown() {
    offset = offset += const Offset(0, 1);
    notifyListeners();
  }
}

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChangePosition()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Slide Animation';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const SlideanimatedExample(),
      ),
    );
  }
}

class SlideanimatedExample extends StatelessWidget {
  const SlideanimatedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChangePosition position = Provider.of<ChangePosition>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: position.changePositionDown,
              child: const Text('Slide Down'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: position.changePositionUp,
              child: const Text('Slide Up'),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedSlide(
                offset: position.offset,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 150,
                      height: 150,
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2016/03/23/04/01/woman-1274056_960_720.jpg',
                      ),
                    ),
                    const Divider(
                      thickness: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 150,
                      height: 150,
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2015/07/09/00/29/woman-837156_960_720.jpg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * 
 */