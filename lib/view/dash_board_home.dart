import 'dart:html';

import 'package:flutter/material.dart';
import '/model/all_tab_bars.dart';

//import 'all_pages.dart';

/// adding transparent appbar
/// modifying build icons

class DashBoardHome extends StatelessWidget {
  const DashBoardHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Testing Transparency'),
          centerTitle: true,
          leading: const BackButton(
            color: Colors.red,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.holiday_village),
            )
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          //backgroundColor: Colors.transparent,
          backgroundColor: Colors.white.withOpacity(0.19),
          elevation: 0,
        ),
        body: Image.network(
          'https://cdn.pixabay.com/photo/2021/10/19/10/56/cat-6723256_960_720.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }

  IconButton buildIcons(Icon icon) {
    return IconButton(
      onPressed: () {},
      icon: icon,
    );
  }
}
