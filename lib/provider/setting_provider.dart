import 'package:flutter/material.dart';

class SettingProvider with ChangeNotifier {
  int _num = 0;
  int get num => _num;
  void incWith2() {
    _num = _num + 2;
    notifyListeners();
  }
}
