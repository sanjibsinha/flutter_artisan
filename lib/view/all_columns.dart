import 'package:flutter/material.dart';

class ThirdColumn extends StatelessWidget {
  const ThirdColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          'https://cdn.pixabay.com/photo/2021/12/12/20/26/flow-6866055_960_720.jpg',
          width: 150,
          height: 100,
        ),
        Container(
          padding: const EdgeInsets.all(7),
          child: const Text(
            'Let\'s go',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

class SecondColumn extends StatelessWidget {
  const SecondColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          'https://cdn.pixabay.com/photo/2021/11/13/23/06/tree-6792528_960_720.jpg',
          width: 150,
          height: 100,
        ),
        Container(
          padding: const EdgeInsets.all(7),
          child: const Text(
            'Let\'s go',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class FirstColumn extends StatelessWidget {
  const FirstColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          'https://cdn.pixabay.com/photo/2021/12/05/10/28/nature-6847175_960_720.jpg',
          width: 150,
          height: 100,
        ),
        Container(
          padding: const EdgeInsets.all(7),
          child: const Text(
            'Let\'s go',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
