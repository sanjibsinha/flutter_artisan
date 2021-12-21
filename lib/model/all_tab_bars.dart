import 'package:flutter/material.dart';

TabBar allTabBars() => TabBar(
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
