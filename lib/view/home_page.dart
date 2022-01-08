import 'package:flutter/material.dart';
import 'view_dialogs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String title = 'Alert Dialog Sample';
  bool tappedYes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Center(
        child: Text(
          tappedYes ? 'You\'re Subscribed...' : 'You\'re not Subscribed yet...',
          style: const TextStyle(
            fontSize: 40.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final action = await ViewDialogs.yesOrNoDialog(
            context,
            'Subscription',
            'Waant to be notified about the '
                'upcoming events and shows? Please subscribe to '
                'our News Channel.',
          );
          if (action == ViewDialogsAction.yes) {
            setState(() => tappedYes = true);
          } else {
            setState(() => tappedYes = false);
          }
        },
        label: const Text('Show me Notification'),
      ),
    );
  }
}
