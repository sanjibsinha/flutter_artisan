import 'package:flutter/material.dart';

class SliverNestedExample extends StatelessWidget {
  const SliverNestedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sliver and Nested Scroll',
      home: NestedSliverHome(),
    );
  }
}

class NestedSliverHome extends StatelessWidget {
  const NestedSliverHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                  color: Colors.blue,
                  child: Text(
                    "The Toolbar Collapses",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                background: Image.network(
                  'https://cdn.pixabay.com/photo/2016/09/10/17/18/book-1659717_960_720.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              width: 250,
              height: 250,
              color: Colors.red,
            ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              width: 250,
              height: 250,
              color: Colors.yellow,
            ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              width: 250,
              height: 250,
              color: Colors.green,
            ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              width: 250,
              height: 250,
              color: Colors.pink,
            ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              width: 250,
              height: 250,
              color: Colors.amber,
            ),
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              width: 250,
              height: 250,
              color: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
