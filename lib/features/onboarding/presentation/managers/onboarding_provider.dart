import 'package:flutter/material.dart';

class OnboardingpProvider extends ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  void changePage(int index) {
    _currentPage = index;
    notifyListeners();
  }
}
