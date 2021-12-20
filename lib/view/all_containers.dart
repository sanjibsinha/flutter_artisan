import 'package:flutter/material.dart';

import 'all_columns.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: const [
            FirstColumn(),
            SecondColumn(),
            ThirdColumn(),
          ],
        ),
      ),
    );
  }
}

class SecondContainer extends StatelessWidget {
  const SecondContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: const [
            FirstColumn(),
            SecondColumn(),
            ThirdColumn(),
          ],
        ),
      ),
    );
  }
}

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: const [
            FirstColumn(),
            SecondColumn(),
            ThirdColumn(),
          ],
        ),
      ),
    );
  }
}
