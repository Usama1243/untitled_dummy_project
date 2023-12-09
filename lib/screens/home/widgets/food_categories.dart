import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screens/home/provider/provider_home_page.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, activeItem, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              activeItem.activeStatusIceCream();
            },
            child: Material(
              color: activeItem.iceCreamGetter ? Colors.black : Colors.white,
              elevation: 20,
              shadowColor: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  "images/ice-cream.png",
                  height: 40,
                  width: 40,
                  color:
                      activeItem.iceCreamGetter ? Colors.white : Colors.black,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              activeItem.activeStatusPizza();
            },
            child: Material(
              color: activeItem.pizzaGetter ? Colors.black : Colors.white,
              elevation: 20,
              shadowColor: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  "images/pizza.png",
                  height: 40,
                  width: 40,
                  color: activeItem.pizzaGetter ? Colors.white : Colors.black,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              activeItem.activeStatusSalad();
            },
            child: Material(
              color: activeItem.saladGetter ? Colors.black : Colors.white,
              elevation: 20,
              shadowColor: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  "images/salad.png",
                  height: 40,
                  width: 40,
                  color: activeItem.saladGetter ? Colors.white : Colors.black,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              activeItem.activeStatusBurger();
            },
            child: Material(
              color: activeItem.burgerGetter ? Colors.black : Colors.white,
              elevation: 20,
              shadowColor: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  "images/burger.png",
                  height: 40,
                  width: 40,
                  color: activeItem.burgerGetter ? Colors.white : Colors.black,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
