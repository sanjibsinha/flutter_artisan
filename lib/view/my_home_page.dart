import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/model/user_provider.dart';
import '/model/database_handler.dart';
import '/model/user.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const String title = 'Database Handling';

  @override
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    final handler = DatabaseHandler();
    return Scaffold(
      appBar: customAppBar(title),
      body: FutureBuilder(
        future: handler.retrieveUsers(),
        builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    key: ValueKey<int>(snapshot.data![index].id!),
                    contentPadding: const EdgeInsets.all(8.0),
                    title: Text(
                      context.watch<User>().name,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          userProvider.addingUsers('xxx');
        },
        label: const Text(
          'Add Users',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  AppBar customAppBar(String title) {
    return AppBar(
      centerTitle: true,
      //backgroundColor: Colors.grey[400],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink,
              Colors.grey,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      //elevation: 20,
      titleSpacing: 80,
      leading: const Icon(Icons.menu),
      title: Text(
        title,
        textAlign: TextAlign.left,
      ),
      actions: [
        buildIcons(
          const Icon(Icons.add_a_photo),
        ),
        buildIcons(
          const Icon(
            Icons.notification_add,
          ),
        ),
        buildIcons(
          const Icon(
            Icons.settings,
          ),
        ),
        buildIcons(
          const Icon(Icons.search),
        ),
      ],
    );
  }

  IconButton buildIcons(Icon icon) {
    return IconButton(
      onPressed: () {},
      icon: icon,
    );
  }
}

class PinkPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    /// creating path object that will paint the background
    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));

    /// setting color for the background
    paint.color = Colors.pink.shade800;
    canvas.drawPath(mainBackground, paint);

    /// creating another Path object that will start painting
    Path ovalPath = Path();

    ovalPath.moveTo(0, height * 0.1);

    ovalPath.quadraticBezierTo(
        width * 0.45, height * 0.35, width * 0.51, height * 0.8);

    ovalPath.quadraticBezierTo(width * 0.58, height * 0.8, width * 0.2, height);

    ovalPath.lineTo(0, height);

    ovalPath.close();

    paint.color = Colors.pink.shade500;
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
