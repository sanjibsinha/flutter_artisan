import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  int count = 0;
  int _num = 0;
  double x = 0.0;
  void onItemTapped(int index) {
    count = index;
    notifyListeners();
  }

  //int get count => _count;
  int get num => _num;

  void increment() {
    count++;
    notifyListeners();
  }

  void addOne() {
    _num++;
    notifyListeners();
  }

  void decrement() {
    count--;
    notifyListeners();
  }

  void increase() {
    x = x + 1.0;
    notifyListeners();
  }
}
