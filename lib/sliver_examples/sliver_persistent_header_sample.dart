import 'dart:ui';

import 'package:flutter/material.dart';

class SliverPersistentHeaderSample extends StatelessWidget {
  const SliverPersistentHeaderSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SliverPersistentHeader Sample',
      home: SliverPersistentHeaderHome(),
    );
  }
}

class SliverPersistentHeaderHome extends StatelessWidget {
  const SliverPersistentHeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text(
            'SliverPersistentHeader Sample',
            style: TextStyle(
              fontFamily: 'Allison',
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.deepPurple,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              'https://cdn.pixabay.com/photo/2016/09/10/17/18/book-1659717_960_720.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const ACustomSliverHeader(
          backgroundColor: Colors.amber,
          headerTitle: 'First Sliver Persistent Header Sample',
        ),
        const ACustomSliverHeader(
          backgroundColor: Colors.green,
          headerTitle: 'Second Sliver Persistent Header Sample',
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.orange[100 * (index % 9)],
                child: Text(
                  'grid item $index',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
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
    );
  }
}

class ACustomSliverHeader extends StatelessWidget {
  final Color backgroundColor;
  final String headerTitle;
// {Key? key}) : super(key: key);
  const ACustomSliverHeader({
    Key? key,
    required this.backgroundColor,
    required this.headerTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: false,
      delegate: Delegate(backgroundColor, headerTitle),
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;
  final String headerTitle;

  Delegate(this.backgroundColor, this.headerTitle);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: Text(
          headerTitle,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
