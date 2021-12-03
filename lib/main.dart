import 'package:flutter/material.dart';

void main() {
  runApp(
    const MediaQueryHome(),
  );
}

class MediaQueryHome extends StatelessWidget {
  const MediaQueryHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediaQuery Sample',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MediaQuerySample(),
    );
  }
}

class MediaQuerySample extends StatelessWidget {
  const MediaQuerySample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.maybeOf(context).size;
    var screenSize = MediaQuery.maybeOf(context)!.size;

    return Scaffold(
      appBar: appBarSize(screenSize),
      body: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        child: const Text(
          'MediaQuery Sample',
          style: TextStyle(
            fontFamily: 'Allison',
            fontSize: 70,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  PreferredSize appBarSize(Size screenSize) {
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              const Text('Portrait'),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Landscape',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
