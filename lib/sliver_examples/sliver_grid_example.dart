import 'package:flutter/material.dart';

class SliverGridExample extends StatelessWidget {
  const SliverGridExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sliver and Nested Scroll',
      home: SliverGridHome(),
    );
  }
}

class SliverGridHome extends StatelessWidget {
  const SliverGridHome({Key? key}) : super(key: key);

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
                  child: const Text(
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
        body: CustomScrollView(
          slivers: <Widget>[
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.orange[100 * (index % 9)],
                    child: Text('grid item $index'),
                  );
                },
                childCount: 30,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
