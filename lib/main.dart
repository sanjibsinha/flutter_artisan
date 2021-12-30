import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'model/counter.dart';
import '/model/user_provider.dart';

import 'model/user.dart';
import 'view/my_app.dart';

void main() {
  UserProvider x = UserProvider();
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => User(name: x.xName)),
      ],
      child: const MyApp(),
    ),
  );
}
