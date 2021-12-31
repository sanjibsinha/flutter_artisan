import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/model/user_provider.dart';
import '/model/database_handler.dart';
import '/model/user.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const String title = 'Database Handling';

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    final handler = DatabaseHandler();
    Future<int> addUsers() async {
      /* User firstUser = User(
        name: userProvider.userOne.name,
        location: userProvider.userOne.location,
      ); */

      /* User secondUser = User(
        name: userProvider.userTwo.name,
        location: userProvider.userTwo.location,
      ); */

      User thirddUser = User(
        name: userProvider.userThree.name,
        location: userProvider.userThree.location,
      );
      List<User> listOfUsers = [
        //firstUser,
        //secondUser,
        thirddUser,
      ];
      return await handler.insertUser(listOfUsers);
    }

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
                      snapshot.data![index].name,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                      ),
                    ),
                    subtitle: Text(
                      snapshot.data![index].location,
                      style: const TextStyle(
                        fontSize: 20,
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
          handler.initializeDB().whenComplete(() async {
            await addUsers();
          });

          userProvider.addingUsers();
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
