import 'package:flutter/material.dart';

import 'west_bengal.dart';

class AllLocations extends StatelessWidget {
  const AllLocations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 18.0, // gap between adjacent chips
        runSpacing: 14.0, // gap between lines
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Choose Locations',
              style: TextStyle(
                fontFamily: 'Allison',
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WestBengal())),
            child: Hero(
              tag: 'wb',
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2021/11/13/23/06/tree-6792528_960_720.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
