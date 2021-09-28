import 'package:flutter/material.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  static const routename = '/first';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondPage()),
          );
        },
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2021/07/12/19/43/swans-6421355_960_720.jpg'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Using Color Constants',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Allison',
                color: Colors.blue,
              ),
            ),
            Text(
              'Using Hexadecimal Color',
              style: TextStyle(
                fontSize: 28,
                color: Color(0xFF89B5F7),
              ),
            ),
            Text(
              'Using ARGB Color',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 255, 128, 200),
              ),
            ),
            Text(
              'Using RGBO Color',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromRGBO(0, 255, 0, 100),
              ),
            )
          ],
        ),
      ),
    );
  }
}
