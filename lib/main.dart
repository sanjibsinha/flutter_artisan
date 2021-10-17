import 'package:flutter/material.dart';

/*
import 'wrap_examples/wrap_example.dart';
import 'package:provider/provider.dart';
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
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      //child: const CounterApp(),
      child: const WrapExample(),
    ),
  );
}
*/
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Coding with Curry',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const CurryFormScreen());
  }
}

class CurryFormScreen extends StatefulWidget {
  const CurryFormScreen({Key? key}) : super(key: key);

  @override
  _CurryFormScreenState createState() => _CurryFormScreenState();
}

class _CurryFormScreenState extends State<CurryFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final List<String> _nameList = ['test'];

  Widget _buildNameField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Name'),
      validator: (String? value) {
        if (value == '') {
          return 'Name is required';
        }

        return null;
      },
      onSaved: (String? value) {
        setState(() {
          _nameList.add(value!);
        });
      },
    );
  }

  Widget _buildListWidget(Color color, String text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 48,
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    _formKey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const Text('Coding with Curry'),
            backgroundColor: Colors.deepPurple,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                  'https://chefjet.com/wp-content/uploads/2017/06/Jet-Tila-Thai-Chicken-Curry.jpg',
                  fit: BoxFit.cover),
            ),
          ),
          const CurrySliverHeader(
            backgroundColor: Colors.red,
            headerTitle: 'xx',
          ),
          const CurrySliverHeader(
            backgroundColor: Colors.blue,
            headerTitle: 'xxxx',
          ),
          SliverFixedExtentList(
            itemExtent: 150,
            delegate: SliverChildListDelegate([
              _buildListWidget(Colors.purple, "Curry"),
              _buildListWidget(Colors.blue, "Rice"),
              _buildListWidget(Colors.purple, "Pizza"),
              _buildListWidget(Colors.blue, "Hamburger"),
              _buildListWidget(Colors.purple, "Noodles"),
              _buildListWidget(Colors.blue, "Eggs"),
              _buildListWidget(Colors.purple, "Salad"),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: const EdgeInsets.all(24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('Add Name', style: TextStyle(fontSize: 22)),
                      _buildNameField(),
                      const SizedBox(height: 16),
                      TextButton(
                        child: const Text('Submit'),
                        onPressed: _submit,
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(10),
                color: Colors.deepPurple,
                child: Center(
                  child: Text(
                    _nameList[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              );
            }, childCount: _nameList.length),
          )
        ],
      ),
    );
  }
}

class CurrySliverHeader extends StatelessWidget {
  final Color backgroundColor;
  final String headerTitle;
// {Key? key}) : super(key: key);
  const CurrySliverHeader({
    Key? key,
    required this.backgroundColor,
    required this.headerTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: false,
      delegate: Delegate(backgroundColor, headerTitle),
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;
  final String headerTitle;

  Delegate(this.backgroundColor, this.headerTitle);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: Text(
          headerTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 36,
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
