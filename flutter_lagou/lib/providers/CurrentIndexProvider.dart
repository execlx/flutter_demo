import 'package:flutter/material.dart';

class CurrentIndexProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners(); // 通知监听器状态发生变化
  }
}
