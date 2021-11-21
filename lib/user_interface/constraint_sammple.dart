import 'dart:ui';

import 'package:flutter/material.dart';

class ConstraintSample extends StatelessWidget {
  const ConstraintSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Constraint Sample',
      debugShowCheckedModeBanner: false,
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
        width: 300,
        height: 100,
        color: Colors.amber,
        //alignment: Alignment.bottomCenter,
        child: Container(
          width: 200,
          height: 50,
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text(
            'Constraint Sample',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

/**
 * @override
  Widget build(BuildContext context) {    
    return Container(
      width: 150,
      height: 200,      
      child: const Text('Constraint Sample'),      
    );
  }
 */

/**
 *  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 100,
        color: Colors.amber,
        alignment: Alignment.bottomCenter,        
        child: const Text(
          'Constraint Sample',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        
      ),
    );
  }
 */

/**
 * Center(
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
 */