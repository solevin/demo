import 'package:flutter/material.dart';

class TopViewModel with ChangeNotifier {
  int count = 0;

  void notify() => notifyListeners();

}