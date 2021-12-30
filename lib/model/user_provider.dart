import 'package:flutter/material.dart';
import 'package:flutter_artisan/model/user.dart';
import 'database_handler.dart';

final handler = DatabaseHandler();

class UserProvider with ChangeNotifier {
  String xName = '';

  void addingUsers(String name) {
    xName = name;
    handler.initializeDB().whenComplete(() async {
      await addUsers();
    });

    notifyListeners();
  }

  Future<int> addUsers() async {
    User firstUser = User(name: xName);
    User secondUser = User(name: xName);
    List<User> listOfUsers = [
      firstUser,
      secondUser,
    ];
    return await handler.insertUser(listOfUsers);
  }
}
