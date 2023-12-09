import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  //Ice Cream
  bool _iceCream = false;

  bool get iceCreamGetter => _iceCream;

  activeStatusIceCream() {
    _iceCream = !_iceCream;
    notifyListeners();
  }

////////////////////////////////////////////////////////
  // Pizza
  bool _pizza = false;

  bool get pizzaGetter => _pizza;

  void activeStatusPizza() {
    _pizza = !_pizza;
    notifyListeners();
  }

  ////////////////////////////////////////////////////////
  // Salad
  bool _salad = false;

  bool get saladGetter => _salad;

  void activeStatusSalad() {
    _salad = !_salad;
    notifyListeners();
  }

  ////////////////////////////////////////////////////////
  // Burger
  bool _burger = false;

  bool get burgerGetter => _burger;

  void activeStatusBurger() {
    _burger = !_burger;
    notifyListeners();
  }
}
