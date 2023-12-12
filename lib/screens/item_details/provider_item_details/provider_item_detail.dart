import 'package:flutter/cupertino.dart';

class ItemDetailProvider extends ChangeNotifier {
  int _quantity = 0;


  get quantity => _quantity;



  void addQuantity() {

    _quantity++;
    notifyListeners();
  }

  void removeQuantity() {
    if (_quantity > 1) {

      _quantity--;
      notifyListeners();
    }
  }
}
