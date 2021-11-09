import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  int _num = 0;
  double x = 0.0;

  int get count => _count;
  int get num => _num;

  void increment() {
    _count++;
    notifyListeners();
  }

  void addOne() {
    _num++;
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
