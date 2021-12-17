import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return const MaterialApp(
      title: 'A Custom Home Page',
      home: DashBoard(
          // size: size,
          ),
    );
  }
}

class DashBoard extends StatelessWidget {
  //final Size size;
  const DashBoard({
    Key? key,
    //required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'A Custom Home Page',

      /// ignore: todo
      ///TODO: we'll make a custom global theme later
      ///

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          leading: const Icon(Icons.menu),
          title: const Text(
            "A Custom Home Page",
            textAlign: TextAlign.center,
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
            Container(
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
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
                    ),
                    Column(
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
                    ),
                    Column(
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
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShapingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    /// setting the paint color greyish
    /// so it could cover the lower half of the screen
    ///
    paint.color = Colors.black12;

    /// Creating a rectangle with size and width same as the canvas
    /// It'll be going to cover the whole screen
    ///
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);

    /// Drawing the rectangle using the paint
    ///
    canvas.drawRect(rect, paint);

    /// Covering the upper half of the rectangle
    ///
    paint.color = Colors.purpleAccent;
    // Firstly, creating a path to form the shape
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    // Secondly, closing the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
    // Setting the color property of the paint
    paint.color = Colors.white;
    // Center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 2);
    // Finally, drawing the circle with center having radius 95.0
    canvas.drawCircle(center, 95.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
