import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeTextStyle with ChangeNotifier {
  TextStyle targetTextStyle = const TextStyle(
    color: Colors.red,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );
  void changeTextStyle() {
    targetTextStyle = targetTextStyle ==
            const TextStyle(
              color: Colors.red,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        ? const TextStyle(
            color: Colors.blue,
            fontSize: 25.0,
          )
        : const TextStyle(
            color: Colors.red,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          );
    notifyListeners();
  }
}

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChangeTextStyle()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Animated TextStyle';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: Column(
            children: const [
              ImplicitTextStyleAnimation(),
              SizedBox(
                height: 20.0,
              ),
              ExplicitTextStyleAnimation(),
            ],
          )),
    );
  }
}

class ImplicitTextStyleAnimation extends StatelessWidget {
  const ImplicitTextStyleAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChangeTextStyle _targetTextStyleChange = Provider.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedDefaultTextStyle(
          style: _targetTextStyleChange.targetTextStyle,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: const Text('Implicit Animation'),
        ),
        ElevatedButton(
            child: const Text('Change TextStyle'),
            onPressed: () {
              _targetTextStyleChange.changeTextStyle();
            }),
      ],
    );
  }
}

class ExplicitTextStyleAnimation extends StatefulWidget {
  const ExplicitTextStyleAnimation({Key? key}) : super(key: key);

  @override
  State<ExplicitTextStyleAnimation> createState() =>
      _ExplicitTextStyleAnimationState();
}

class _ExplicitTextStyleAnimationState extends State<ExplicitTextStyleAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late TextStyleTween _styleTween;
  late CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _styleTween = TextStyleTween(
      begin: const TextStyle(
        fontSize: 25,
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
      end: const TextStyle(
        fontSize: 25,
        color: Colors.deepPurple,
      ),
    );
    _curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTextStyleTransition(
        style: _styleTween.animate(_curvedAnimation),
        child: const Text('Explicit TextStyle'),
      ),
    );
  }
}
