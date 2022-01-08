import 'package:flutter/material.dart';

enum MyDialogAction { yes, no }

class MyDialog {
  static Future<MyDialogAction> yesAbortDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Text(title),
          content: Text(body),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(MyDialogAction.no),
              child: const Text('Not Necessary'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(MyDialogAction.yes),
              child: const Text(
                'Want to be Notified',
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ],
        );
      },
    );
    return (action != null) ? action : MyDialogAction.no;
  }
}
