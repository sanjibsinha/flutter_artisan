import 'package:flutter/material.dart';
import '/model/all_tab_bars.dart';

import 'all_pages.dart';

/// adding transparent appbar

class DashBoardHome extends StatelessWidget {
  const DashBoardHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(10, 5),
            ),
          ),
          //backgroundColor: Colors.grey[400],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.pink,
                  Colors.grey,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          elevation: 20,
          titleSpacing: 80,
          leading: const Icon(Icons.menu),
          title: const Text(
            'Let\'s Go!',
            textAlign: TextAlign.center,
          ),
          actions: [
            buildIcons(
              const Icon(Icons.ac_unit),
            ),
            buildIcons(
              const Icon(
                Icons.notification_add,
              ),
            ),
            buildIcons(
              const Icon(
                Icons.settings,
              ),
            ),
            buildIcons(
              const Icon(Icons.search),
            ),
          ],
          bottom: allTabBars(),
        ),
        body: TabBarView(
          children: [
            FirstPage(size: size),
            SecondPage(size: size),
            ThirdPage(size: size),
            FourthPage(size: size),
          ],
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
