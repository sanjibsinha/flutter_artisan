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
              margin: const EdgeInsets.only(top: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: const <Widget>[
                    Text(
                      'We\'ll make a list of GridItems later.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
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

/* CustomGridItem(position: 0),
                    CustomGridItem(position: 1),
                    CustomGridItem(position: 2),
                    CustomGridItem(position: 3),
                    CustomGridItem(position: 4),
                    CustomGridItem(position: 5), */

class CustomGridItem extends StatelessWidget {
  const CustomGridItem({
    Key? key,
    required this.position,
  }) : super(key: key);

  final int position;

  @override
  Widget build(BuildContext context) {
    Color? color = Colors.white;
    var icondata = Icons.add;

    switch (position) {
      case 0:
        color = Colors.cyan;
        icondata = Icons.map;
        break;
      case 1:
        color = Colors.deepPurple;

        icondata = Icons.add_location;
        break;
      case 2:
        color = Colors.orange[300];
        icondata = Icons.library_books;
        break;
      case 3:
        color = Colors.pinkAccent;
        icondata = Icons.access_time;
        break;
      case 4:
        color = Colors.teal[900];
        icondata = Icons.add_shopping_cart;
        break;
      case 5:
        color = Colors.green[600];
        icondata = Icons.list;
        break;
    }

    return Builder(builder: (context) {
      return Padding(
        padding:
            const EdgeInsets.only(left: 10.0, right: 10, bottom: 5, top: 5),
        child: Card(
          elevation: 10,
          color: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Selected Item $position")));
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    icondata,
                    size: 40,
                    color: Colors.white,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
