import 'package:flutter/foundation.dart';

class Student with ChangeNotifier {
  final String id;
  final String name;
  final String imageUrl;

  Student({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}

class Students with ChangeNotifier {
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
}
