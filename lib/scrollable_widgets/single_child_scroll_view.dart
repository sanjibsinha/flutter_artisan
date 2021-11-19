import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class Student {
  final String id;
  final String name;
  final String imageUrl;

  Student({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}

/// adding id and images
List<Student> students = [
  Student(
    id: 's1',
    name: 'Json',
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/09/11/19/49/education-3670453_960_720.jpg',
  ),
  Student(
    id: 's2',
    name: 'Limpi',
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/11/29/13/56/asian-1870022_960_720.jpg',
  ),
  Student(
    id: 's3',
    name: 'Maria',
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/09/21/13/32/girl-2771936_960_720.jpg',
  ),
];

class SingleChildScrollViewSample extends StatelessWidget {
  const SingleChildScrollViewSample({Key? key}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students Home Page'),
      ),
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyText2!,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    children: students.map((e) {
                      return AllStudents(title: e.name, image: e.imageUrl);
                    }).toList(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class AllStudents extends StatelessWidget {
  final String title;
  final String image;
  const AllStudents({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(
              5.0,
            ),
            margin: const EdgeInsets.all(
              5.0,
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: 'Allison',
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.network(
            image,
            fit: BoxFit.cover,
            width: 250,
            height: 250,
          ),
        ],
      ),
    );
  }
}
