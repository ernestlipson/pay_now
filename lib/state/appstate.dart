import 'package:flutter/widgets.dart';

final appState = AppState();

class AppState extends ChangeNotifier {
  int _transactionIndex = 1;
  int _currentButtomPage = 0;
  int _currentOnBoardPage = 0;

  int get currentOnBoardPage => _currentOnBoardPage;
  int get currentButtomPage => _currentButtomPage;
  int get transactionIndex => _transactionIndex;

  void setCurrentButtomPage(int index) {
    _currentButtomPage = index;
    notifyListeners();
  }

  void setTransactionIndex(int index) {
    _transactionIndex = index;
    notifyListeners();
  }

  void setCurrentOnBoardPage(int index) {
    _currentOnBoardPage = index;
    notifyListeners();
  }
}
