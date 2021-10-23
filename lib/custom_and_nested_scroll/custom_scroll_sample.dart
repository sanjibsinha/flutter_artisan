import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_artisan/models/counter.dart';

class CustomScrollSample extends StatelessWidget {
  const CustomScrollSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CustomScroll Sample',
      home: CustomScrollHome(),
    );
  }
}

class CustomScrollHome extends StatelessWidget {
  CustomScrollHome({Key? key}) : super(key: key);
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    int index = context.watch<Counter>().count;
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Press on the plus to add items above and below'),
        leading: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            top.add(-top.length - 1);
            bottom.add(bottom.length);
            context.read<Counter>().increment();
          },
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'It will collapse',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              background: Image.network(
                'https://cdn.pixabay.com/photo/2016/09/10/17/18/book-1659717_960_720.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          /* Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'You have pushed the button this many times:',
                style: TextStyle(
                  fontFamily: 'Allison',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Count(),
            ],
          ),
        ), */
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.blue[200 + top[index] % 4 * 100],
                  height: 100 + top[index] % 4 * 20.0,
                  child: Text('Item: ${top[index]}'),
                );
              },
              childCount: top.length,
            ),
          ),
          SliverList(
            key: centerKey,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.blue[200 + bottom[index] % 4 * 100],
                  height: 100 + bottom[index] % 4 * 20.0,
                  child: Text('Item: ${bottom[index]}'),
                );
              },
              childCount: bottom.length,
            ),
          ),
        ],
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().count}',
      key: const Key('counterState'),
      style: const TextStyle(
        fontFamily: 'Allison',
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
