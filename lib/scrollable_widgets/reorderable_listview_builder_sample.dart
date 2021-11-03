import 'package:flutter/material.dart';

/// This is the main application widget.
class ReorderableListViewBuilderSample extends StatelessWidget {
  const ReorderableListViewBuilderSample({Key? key}) : super(key: key);

  static const String _title = 'ReorderableListView Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const ReorderableListViewBuilderHome(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class ReorderableListViewBuilderHome extends StatefulWidget {
  const ReorderableListViewBuilderHome({Key? key}) : super(key: key);

  @override
  State<ReorderableListViewBuilderHome> createState() =>
      _ReorderableListViewBuilderHomeState();
}

class _ReorderableListViewBuilderHomeState
    extends State<ReorderableListViewBuilderHome> {
  /// generating 10 items
  final List<int> _items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final String itemName = '${_items[index]}';
          return Container(
            key: ValueKey(itemName),
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
                itemName,
                key: ValueKey(itemName),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 80.0,
                  fontFamily: 'Allison',
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(Icons.drag_indicator_outlined),
            ),
          );
        },
        // The reorder function
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex = newIndex - 1;
            }
            final element = _items.removeAt(oldIndex);
            _items.insert(newIndex, element);
          });
        });
  }
}
