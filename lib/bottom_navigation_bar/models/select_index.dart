import 'package:flutter/widgets.dart';

class SelectIndex with ChangeNotifier {
  int index = 0;
  void increaseNumber(int number) {
    index = number;
    notifyListeners();
  }
}
