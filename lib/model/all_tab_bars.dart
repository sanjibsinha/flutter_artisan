import 'package:flutter/material.dart';

/// modifying tabbars
///
TabBar allTabBars() => TabBar(
      isScrollable: true,
      indicatorColor: Colors.red,
      indicatorWeight: 10,
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
    );
