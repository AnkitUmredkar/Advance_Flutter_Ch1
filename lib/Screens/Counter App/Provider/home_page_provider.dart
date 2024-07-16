import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  int count = 0;

  void incraseValue() {
    count++;
    notifyListeners();
  }
}
