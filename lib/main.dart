import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'models/counter.dart';
import 'models/wordpair.dart';
import 'models/student.dart';

import 'global_theme/global_theme_sample.dart';
/**
 * adding branches separately
 * and modifying
 * this time material banner
 */

//import 'layout/baseline_sample.dart';
//import 'layout/aspect_ratio_sample.dart';
//import 'layout/align_sample.dart';
//import 'widgets/understanding_element.dart';
//import 'user_interface/box_constraint_sample.dart';
//import '/user_interface/constraint_sammple.dart';
//import 'scrollable_widgets/single_child_scroll_view.dart';
//import 'scrollable_widgets/listview_all/listview_sample.dart';
//import 'scrollable_widgets/listview_all/listvew_custom_sample.dart';
//import 'scrollable_widgets/listview_all/listview_seperated_sample.dart';
//import 'scrollable_widgets/listview_all/listview_builder_sample.dart';
//import 'state_management/provider_example/provider_sample_nine.dart';
//import 'state_management/provider_example/provider_sample_eight.dart';
//import 'state_management/provider_example/provider_sample_seven.dart';
//import 'state_management/provider_example/provider_sample_six.dart';
//import 'state_management/provider_example/provider_sample_five.dart';
//import 'state_management/provider_example/provider_sample_one.dart';
//import 'state_management/provider_example/provider_sample_two.dart';
//import 'state_management/provider_example/provider_sample_four.dart';
//import 'state_management/provider_example/provider_sample_three.dart';
//import 'state_management/provider_example/provider_sample_two.dart';
//import 'scrollable_widgets/reorderable_listview_builder_sample.dart';
//import 'scrollable_widgets/reorderable_listview_sample.dart';
//import 'scrollable_widgets/scrollbar_controller_sample.dart';
//import 'scrollable_widgets/scrollbar_sample.dart';
//import 'scrollable_widgets/page_view_samples/page_view_another_builder.dart';
//import 'custom_and_nested_scroll/draggable_scrollable_sheet_sample.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'state_management/provider_example/provider_example.dart';
//import 'state_management/riverpod_example/state_notifier_provider_app_sample.dart';
//import 'state_management/riverpod_example/state_notifier_provider_app_sample.dart';
//import 'package:provider/provider.dart';
//import 'page_view_samples/page_view_builder_sample_stateful.dart';
//import 'page_view_samples/page_view_builder_simple.dart';
//import 'page_view_samples/page_view_builder_sample.dart';
//import 'custom_and_nested_scroll/nested_scroll_view_sample_one.dart';
//import 'page_view_samples/page_view_sample_simple.dart';
//import 'custom_and_nested_scroll/custom_scroll_sample.dart';
//import 'sliver_examples/sliver_fixed_extent_list_sample.dart';
//import 'sliver_examples/sliver_persistent_header_sample.dart';
//import 'sliver_examples/sliver_grid_example.dart';
//import 'sliver_examples/sliver_nested_example.dart';
//import 'sliver_examples/sliver_appbar_example.dart';
//import 'wrap_examples/wrap_example.dart';
//import 'models/counter.dart';
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
///

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => WordPairing()),
        ChangeNotifierProvider(create: (_) => Students()),
      ],
      child: const GlobalThemeSample(),
      //child: const BaselineSample(),
      //child: const AspectRatioSample(),
      //child: const AlignSample(),
      //child: const UnderstandingElement(),
      //child: const BoxConstraintsSample(),
      //child: const ConstraintSample(),
      //child: const SingleChildScrollViewSample(),
      //child: const ListViewSample(),
      //child: const ListViewCustomSample(),
      //child: const ListViewSeperatedSample(),
      //child: const ListViewBuilderSample(),
      //child: const ProviderSampleNine(),
      //child: const ProviderSampleEight(),
      //child: const ProviderSampleSeven(),
      //child: const ProviderSampleSix(),
      //child: const ProviderSampleFive(),
      //child: const ProviderSampleFour(),
      //child: const ProviderSampleThree(),
      //child: const ProviderSampleTwo(),
    ),
  );
}

/* void main() {
  runApp(
    /* ChangeNotifierProvider(
      create: (context) =>
          Counter(), // designed Model is provided to the desired widgets
      //child: const ProviderSampleOne(),
      //child: const ProviderSampleTwo(),
      child: const ProviderSampleThree(),
    ) */,
    //const ReorderableListViewBuilderSample(),

    //const ReorderableListViewSample(),
    //const ScrollbarControllerSample(),
    //const ScrollbarSample(),
    //const DraggableScrollableSheetSample(),
    //const PageViewAnotherBuilder(),
    //const StatefulSampleOne(),

    /* const ProviderScope(
      //child: StateNotifierProviderAppSample(),
      child: ProviderAppSample(),
    ), */
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
    /* MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Counter(),
        ),
      ],
      child: const ProviderSampleOne(),
    ), */
    /*
    
      //child: const CounterApp(),
      //child: const WrapExample(),
      //child: SliverAppBarExample(),
      //child: const SliverNestedExample(),
      //child: const SliverGridExample(),
      //child: const SliverPersistentHeaderSample(),
      //child: const SliverFixedExtentListAndOthers(),

<<<<<<< Updated upstream
      //child: const CustomScrollSample(),
      //child: const PageViewSampleSimple(),

      //child: CustomScrollSample(),
      //child: NestedScrollViewSampleOne(),
      //child: const PageViewBuilderSample(),
      //child: const PageViewBuilderSampleStateful(),
      child: const PageViewBuilderSimple(),
    ), */
  );
=======
  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;
    var screenSize = MediaQuery.maybeOf(context)!.size;

    return Scaffold(
      appBar: appBar(screenSize),
      body: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        child: const Text(
          'MediaQuery Sample',
          style: TextStyle(
            fontFamily: 'Allison',
            fontSize: 70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  PreferredSize appBar(Size screenSize) {
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              const Text('EXPLORE'),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Discover',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Contact Us',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
>>>>>>> Stashed changes
}
 */

//import 'widgets/first_flutter_app.dart';

/* void main() {
  runApp(
    const FirstFlutterApp(),
  );
} */