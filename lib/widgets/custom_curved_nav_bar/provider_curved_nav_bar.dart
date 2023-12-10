import 'package:flutter/cupertino.dart';

class CurvedNavBarProvider extends ChangeNotifier {
  int _page = 0;

  get page => _page;

  void pageChangerMethod(index) {
    _page = index;
    notifyListeners();
  }
}
