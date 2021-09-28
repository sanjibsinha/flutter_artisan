import 'package:flutter/material.dart';
import 'first_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routename = '/first';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstPage()),
                );
              },
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2020/05/15/14/03/lake-5173683_960_720.jpg'),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Material App Home First',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Material App Home Second',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primaryVariant,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Material App Home Third',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Material App Home Fourth',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
