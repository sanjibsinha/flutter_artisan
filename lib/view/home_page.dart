import 'package:flutter/material.dart';
import 'view_dialogs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool tappedYes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          tappedYes.toString(),
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final action =
              await Dialogs.yesAbortDialog(context, 'My title', 'My Body');
          if (action == DialogAction.yes) {
            setState(() => tappedYes = true);
          } else {
            setState(() => tappedYes = false);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
