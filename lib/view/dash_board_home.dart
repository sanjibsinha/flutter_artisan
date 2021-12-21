import 'dart:html';

import 'package:flutter/material.dart';
import '/model/shaping_painter.dart';

import 'all_containers.dart';

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
          titleSpacing: 20,
          leading: const Icon(Icons.menu),
          title: const Text(
            'Let\'s Go!',
            textAlign: TextAlign.center,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ac_unit),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notification_add,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                  ),
                ),
                text: 'Home',
              ),
              Tab(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.account_box,
                  ),
                ),
                text: 'Log in',
              ),
              Tab(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.security,
                  ),
                ),
                text: 'Account',
              ),
              Tab(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                  ),
                ),
                text: 'Settings',
              ),
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(5),
              child: CustomPaint(
                painter: ShapingPainter(),
                child: Container(
                  height: size.height / 1,
                ),
              ),
            ),
            ListView(
              children: const [
                FirstContainer(),
                SecondContainer(),
                ThirdContainer()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
