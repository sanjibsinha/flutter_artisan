import 'package:flutter/material.dart';

class ConstraintSample extends StatelessWidget {
  const ConstraintSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Constraint Sample',
      home: ConstraintSampleHomme(),
    );
  }
}

class ConstraintSampleHomme extends StatelessWidget {
  const ConstraintSampleHomme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 200,
        child: Container(
          width: 100,
          height: 150,
          child: const Text('Constraint Sample'),
        ),
      ),
    );
  }
}
