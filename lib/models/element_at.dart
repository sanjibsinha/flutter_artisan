import 'package:flutter/material.dart';

class ElementAt with ChangeNotifier {
  int count = 0;

  void onItemTapped(int index) {
    count = index;
    notifyListeners();
  }
}
