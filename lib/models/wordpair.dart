import 'package:flutter/foundation.dart';
import 'package:english_words/english_words.dart';

class WordPairing with ChangeNotifier {
  late var word = WordPair.random();
  late var changedWord = WordPair.random();
  late var wording = WordPair.random();
  void changeWord() {
    changedWord = WordPair.random();
    wording = changedWord;
    notifyListeners();
  }
}
