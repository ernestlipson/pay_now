import 'package:flutter/widgets.dart';

final appState = AppState();

class AppState extends ChangeNotifier {
  int _currentButtomPage = 0;
  int get currentButtomPage => _currentButtomPage;
  void setCurrentButtomPage(int index) {
    _currentButtomPage = index;
    notifyListeners();
  }
}
