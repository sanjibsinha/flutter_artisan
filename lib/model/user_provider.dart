import 'package:flutter/material.dart';

import 'database_handler.dart';
import 'user.dart';

final handler = DatabaseHandler();

class UserProvider with ChangeNotifier {
  /* User _userOne = User(name: 'Hagudu', location: 'Japan');
  User get userOne => _userOne; */
  /*  User _userTwo = User(name: 'Mutudu', location: 'Hokkaidu');
  User get userTwo => _userTwo; */

  User _userThree = User(name: 'John Smith', location: 'East Coast');
  User get userThree => _userThree;

  void addingUsers() {
    //_userOne = _userOne;
    //_userTwo = userTwo;
    _userThree = userThree;

    notifyListeners();
  }
}
