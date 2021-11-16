import 'package:flutter/material.dart';
import 'package:flutter_artisan/models/student.dart';
import 'package:provider/provider.dart';

class ListViewSeperatedSample extends StatelessWidget {
  const ListViewSeperatedSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Students Name',
      home: StudentsHomePage(),
    );
  }
}

class StudentsHomePage extends StatelessWidget {
  const StudentsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final students = Provider.of<Students>(context).students;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students Home Page'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10.0),

        /// required
        itemCount: students.length,

        /// required
        itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: students[index],
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    students[index].name,
                    style: const TextStyle(
                      fontFamily: 'Allison',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    'Student ID: ${students[index].id}',
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.network(
                  students[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),

        /// required
        separatorBuilder: (BuildContext context, int index) =>
            ChangeNotifierProvider.value(
          value: students[index],
          child: const Center(
            child: Divider(
              height: 10,
              thickness: 10,
              color: Colors.black38,
            ),
          ),
        ),
      ),
    );
  }
}
