import 'package:flutter/material.dart';

class BoxConstraintsSample extends StatelessWidget {
  const BoxConstraintsSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BoxConstraints Sample',
      debugShowCheckedModeBanner: false,
      home: BoxConstraintsSampleHomme(),
    );
  }
}

class BoxConstraintsSampleHomme extends StatelessWidget {
  const BoxConstraintsSampleHomme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BoxConstraints Sample'),
      ),
      body: Center(
        child: Container(
          color: Colors.redAccent,
          padding: const EdgeInsets.all(
            20,
          ),
          constraints: const BoxConstraints(
            minHeight: 170,
            minWidth: 170,
            maxHeight: 400,
            maxWidth: 400,
          ),
          child: Container(
            color: Colors.blueAccent[200],
            padding: const EdgeInsets.all(
              20,
            ),
            child: const Text(
              'Box',
              style: TextStyle(
                fontFamily: 'Allison',
                color: Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            constraints: const BoxConstraints.expand(
              height: 100,
              width: 100,
            ),
          ),
        ), //container
      ), //Center
    );
  }
}

/**
 * Center(
        child: Container(
          color: Colors.redAccent,
          padding: const EdgeInsets.all(
            20,
          ),
          child: const Text(
            'Box',
            style: TextStyle(
              fontFamily: 'Allison',
              color: Colors.black38,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          constraints: const BoxConstraints(
            minHeight: 70,
            minWidth: 70,
            maxHeight: 200,
            maxWidth: 200,
          ),
        ),
      ),
 */