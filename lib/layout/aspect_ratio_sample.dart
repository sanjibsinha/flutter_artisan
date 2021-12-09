import 'package:flutter/material.dart';

class AspectRatioSample extends StatelessWidget {
  const AspectRatioSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Baseline Sample',
      debugShowCheckedModeBanner: false,
      home: AspectRatioSampleHomme(),
    );
  }
}

class AspectRatioSampleHomme extends StatelessWidget {
  const AspectRatioSampleHomme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baseline Sample'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              width: 100.0,
              height: 100.0,
              child: AspectRatio(
                aspectRatio: 2.0,
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.yellow,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.blue,
              alignment: Alignment.center,
              width: 100.0,
              height: 100.0,
              child: AspectRatio(
                aspectRatio: 2.0,
                child: Container(
                  width: 80.0,
                  height: 70.0,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.green,
              alignment: Alignment.center,
              width: 100.0,
              height: 100.0,
              child: AspectRatio(
                aspectRatio: 1.5,
                child: Container(
                  width: 25.0,
                  height: 25.0,
                  color: Colors.black26,
                ),
              ),
            ),
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