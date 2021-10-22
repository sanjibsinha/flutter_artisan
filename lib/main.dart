import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'sliver_examples/sliver_persistent_header_sample.dart';
//import 'sliver_examples/sliver_grid_example.dart';
//import 'sliver_examples/sliver_nested_example.dart';
//import 'sliver_examples/sliver_appbar_example.dart';

//import 'wrap_examples/wrap_example.dart';

import 'models/counter.dart';
//import 'views/conter_app.dart';

//import 'text_examples/text_rich_example.dart';
//import 'rich_text_example/rich_text_example.dart';
//import 'text_examples/text_example.dart';
//import 'icon_buttons/icon_button_example.dart';
//import 'text_buttons_example/outlined_button_example.dart';
//import 'text_buttons_example/text_button_example.dart';
//import 'elevated_button/elevated_button_example.dart';
//import 'checkbox_example/checkbox_example.dart';
//import 'checkbox_example/checkbox_listtile_example.dart';
//import 'checkbox_example/mycheckbox_example.dart';
//import 'material_state/material_state_example.dart';
//import 'dropdownbutton_example/dropdownbutton_example.dart';
//import 'tab_bar_example/tabbar_example.dart';
//import 'scaffold_example/scaffold_example.dart';
//import 'package:provider/provider.dart';
//import 'material_app.dart/material_app.dart';
//import 'bottom_navigation_bar/models/select_index.dart';
//import 'drawer_example/drawer_example.dart';
//import 'bottom_navigation_bar/views/bottom_navigation_bar.dart';

//import 'bottom_navigation_bar/bottom_navigation_bar.dart';

//import 'controllers/app_bar_widget.dart';
//import 'controllers/text_button_widget.dart';

/// added a comment to test

void main() {
  runApp(
    // const TabBarExample(),
    //const DropDownButtonPage(),
    //const MaterialStateExamle(),
    //const MyCheckBoxExample(),
    //const CheckBoxExample(),
    //const CheckboxListtileExample(),
    //const ElevatedButtonExample(),
    //const TextButtonExample(),
    //const OutlinedButtonExample(),
    //const IconExample(),
    //const TextExample(),
    //const RichTextMaterial(),
    //const TextRichExample(),
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Counter(),
        ),
      ],
      //child: const CounterApp(),
      //child: const WrapExample(),
      //child: SliverAppBarExample(),
      //child: const SliverNestedExample(),
      //child: const SliverGridExample(),
      child: const SliverPersistentHeaderSample(),
    ),
  );
}
