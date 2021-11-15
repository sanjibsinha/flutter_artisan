import 'package:flutter/material.dart';
import 'package:flutter_artisan/models/student.dart';
import 'package:provider/provider.dart';

class ListViewBuilderSample extends StatelessWidget {
  const ListViewBuilderSample({Key? key}) : super(key: key);

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
      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: students.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: students[i],
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    students[i].name,
                    style: const TextStyle(
                      fontFamily: 'Allison',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.network(
                  students[i].imageUrl,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
