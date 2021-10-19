import 'package:flutter/material.dart';

class SliverExample extends StatelessWidget {
  const SliverExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sliver Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ASimpleFormScreen(),
    );
  }
}

class ASimpleFormScreen extends StatefulWidget {
  const ASimpleFormScreen({Key? key}) : super(key: key);

  @override
  _ASimpleFormScreenState createState() => _ASimpleFormScreenState();
}

class _ASimpleFormScreenState extends State<ASimpleFormScreen> {
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
              background: Image.network('', fit: BoxFit.cover),
            ),
          ),
          const ACustomSliverHeader(
            backgroundColor: Colors.red,
            headerTitle: 'xx',
          ),
          const ACustomSliverHeader(
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

class ACustomSliverHeader extends StatelessWidget {
  final Color backgroundColor;
  final String headerTitle;
// {Key? key}) : super(key: key);
  const ACustomSliverHeader({
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
