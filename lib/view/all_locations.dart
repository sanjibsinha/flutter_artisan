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
            child: Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
                child: const Hero(
                  tag: 'wb',
                  child: Text('WB'),
                ),
              ),
              label: const Text(
                'West Bengal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              shadowColor: Colors.black,
              elevation: 20,
              onDeleted: () {},
            ),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: const Text('MH'),
            ),
            label: const Text(
              'Maharastra',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            shadowColor: Colors.black,
            elevation: 20,
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: const Text('TM'),
            ),
            label: const Text(
              'Tamilnadu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            shadowColor: Colors.black,
            elevation: 20,
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              child: const Text('AP'),
            ),
            label: const Text(
              'Andhra Pradesh',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            shadowColor: Colors.black,
            elevation: 20,
          ),
        ],
      ),
    );
  }
}
