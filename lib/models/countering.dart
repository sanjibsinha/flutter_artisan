import 'package:flutter_riverpod/flutter_riverpod.dart';

class Countering extends StateNotifier<int> {
  Countering() : super(0);

  void increment() => state++;
}
