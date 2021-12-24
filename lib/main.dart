import 'package:flutter/material.dart';

//import 'view/my_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String title = 'Basic Layout';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatelessWidget {
  const MyAppHome({Key? key}) : super(key: key);

  static const String userUrl =
      'https://cdn.pixabay.com/photo/2019/05/04/15/24/art-4178302_960_720.jpg';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
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
            title: const Text(
              'Let\'s Go!',
              textAlign: TextAlign.center,
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
            bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.red,
              indicatorWeight: 10,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                  ),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(
                    Icons.panorama_fish_eye,
                  ),
                  text: 'Log in',
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                  ),
                  text: 'Settings',
                ),
                Tab(
                  icon: Icon(
                    Icons.local_activity,
                  ),
                  text: 'Location',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            ListView(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 200,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.pink,
                            Colors.grey,
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topRight,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 4,
                              ),
                            ],
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(userUrl),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -150,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.all(17),
                          width: 300,
                          height: 100,
                          child: const Text(
                            'Lady Ada Lovelace',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(top: 75),
                  child: const Text(
                    'Augusta Ada King, Countess of Lovelace (née Byron; 10 December 1815 - 27 November 1852) '
                    'was an English mathematician and writer, chiefly known for her work on Charles Babbage\'s '
                    'proposed mechanical general-purpose computer, the Analytical Engine. She was the '
                    'first to recognise that the machine had applications beyond pure calculation, and '
                    'to have published the first algorithm intended to be carried out by such a machine. '
                    'As a result, she is often regarded as the first computer programmer.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
            newPage('Log in'),
            newPage('Settings'),
            newPage('Location'),
          ])),
    );
  }

  IconButton buildIcons(Icon icon) {
    return IconButton(
      onPressed: () {},
      icon: icon,
    );
  }

  Widget newPage(String text) => Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      );
}
