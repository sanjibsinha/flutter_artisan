import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bottom_navigation_bar/models/select_index.dart';
import 'drawer_example/drawer_example.dart';
//import 'bottom_navigation_bar/views/bottom_navigation_bar.dart';

//import 'bottom_navigation_bar/bottom_navigation_bar.dart';

//import 'controllers/app_bar_widget.dart';
//import 'controllers/text_button_widget.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SelectIndex(),
        ),
      ],
      //child: const BottomNavigationBarTest(),
      child: const DrawerExample(),
    ),
  );
}
