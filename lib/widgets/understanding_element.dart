import 'package:flutter/material.dart';

class UnderstandingElement extends StatelessWidget {
  const UnderstandingElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Constraint Sample',
      debugShowCheckedModeBanner: false,
      home: UnderstandingElementHomme(),
    );
  }
}

class UnderstandingElementHomme extends StatelessWidget {
  const UnderstandingElementHomme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Element Sample'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Element One: Text Widget'),
            const Text('Element Two: : Text Widget'),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Element Three: TextButton Widget'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Element Four: TextButton Widget'),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
