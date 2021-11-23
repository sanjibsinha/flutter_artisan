import 'package:flutter/material.dart';

class AlignSample extends StatelessWidget {
  const AlignSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Align Sample',
      debugShowCheckedModeBanner: false,
      home: AlignSampleHomme(),
    );
  }
}

class AlignSampleHomme extends StatelessWidget {
  const AlignSampleHomme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align Sample'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: const Align(
                alignment: Alignment.topRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120.0,
              width: 120.0,
              color: Colors.yellow[50],
              child: const Align(
                alignment: Alignment(0.2, 0.6),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 120.0,
              width: 120.0,
              color: Colors.red[50],
              child: const Align(
                alignment: FractionalOffset(0.2, 0.6),
                child: FlutterLogo(
                  size: 60,
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
