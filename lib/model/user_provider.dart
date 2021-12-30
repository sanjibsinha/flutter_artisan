import 'package:flutter/material.dart';

import 'database_handler.dart';
import 'user.dart';

final handler = DatabaseHandler();

class UserProvider with ChangeNotifier {
  User _userOne = User(name: 'Hagudu');
  User get userOne => _userOne;
  User _userTwo = User(name: 'Mutudu');
  User get userTwo => _userTwo;
  User _userThree = User(name: 'Mutudu');
  User get userThree => _userThree;
  User _userFour = User(name: 'xxxxxx');
  User get userFour => _userFour;

  void addingUsers() {
    _userOne = _userOne;
    _userTwo = userTwo;
    _userThree = userThree;
    _userFour = userFour;
    notifyListeners();
  }
}
