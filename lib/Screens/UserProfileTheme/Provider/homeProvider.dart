import 'package:flutter/material.dart';

class UserProfileClass extends ChangeNotifier {
  bool isDark = false;
  String mode = '';

  void themeChange() {
    isDark = !isDark;
    notifyListeners();
  }
}
