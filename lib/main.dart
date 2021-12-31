import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/model/user_provider.dart';
import 'view/my_app.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
