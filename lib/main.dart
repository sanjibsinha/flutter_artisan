import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'model/counter.dart';
import 'view/my_app.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
    ],
    child: const MyApp(),
  ));
}
