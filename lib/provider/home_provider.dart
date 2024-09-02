import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  int _num = 0;
  int get num => _num;

  void icre() {
    _num++;
    notifyListeners();
  }
}
