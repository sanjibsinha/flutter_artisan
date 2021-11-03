import 'package:flutter/material.dart';

/// This is the main application widget.
class ReorderableListViewSample extends StatelessWidget {
  const ReorderableListViewSample({Key? key}) : super(key: key);

  static const String _title = 'ReorderableListView Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const ReorderableListViewHome(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class ReorderableListViewHome extends StatefulWidget {
  const ReorderableListViewHome({Key? key}) : super(key: key);

  @override
  State<ReorderableListViewHome> createState() =>
      _ReorderableListViewHomeState();
}

class _ReorderableListViewHomeState extends State<ReorderableListViewHome> {
  /// generating 10 items
  final List<int> _items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      children: _items
          .map(
            (e) => Container(
              key: ValueKey(e),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.red,
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(40.0)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 20.0,
                    spreadRadius: 20.0,
                  ),
                ],
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.red,
                    Colors.white,
                  ],
                ),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(25),
                leading: const Icon(Icons.input_outlined),
                title: Text(
                  '$e',
                  key: ValueKey(e),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 80.0,
                    fontFamily: 'Allison',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const Icon(Icons.drag_indicator_outlined),
              ),
            ),
          )
          .toList(),
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
      },
    );
  }
}
