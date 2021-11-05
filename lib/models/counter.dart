import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  double x = 0.0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void increase() {
    x = x + 1.0;
    notifyListeners();
  }
}
