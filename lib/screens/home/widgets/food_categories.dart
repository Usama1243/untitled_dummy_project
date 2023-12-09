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
          // Ice Cream
          InkWell(
            borderRadius: BorderRadius.circular(10),

            onTap: () {
              activeItem.activeStatusIceCream();
            },
            child: Material(
              elevation: activeItem.iceCreamGetter ? 40 : 5,
              shadowColor: Colors.grey,
              surfaceTintColor: activeItem.iceCreamGetter ? Colors.pinkAccent : Colors.white,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  "images/ice-cream.png",
                  height: 40,
                  width: 40,
                  color:
                      activeItem.iceCreamGetter ? Colors.pink : Colors.black,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //Pizza
          InkWell(
            borderRadius: BorderRadius.circular(10),

            onTap: () {
              activeItem.activeStatusPizza();
            },
            child: Material(
              elevation: activeItem.pizzaGetter ? 40 : 5,
              shadowColor: Colors.grey,
              surfaceTintColor: activeItem.pizzaGetter ?Colors.red  :   Colors.white,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  "images/pizza.png",
                  height: 40,
                  width: 40,
                  color: activeItem.pizzaGetter ?  Colors.orange :Colors.black,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //Salad
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              activeItem.activeStatusSalad();
            },
            child: Material(
              elevation: activeItem.saladGetter ? 40 : 5,
              shadowColor: Colors.grey,
              surfaceTintColor:
                  activeItem.saladGetter ?Colors.green :  Colors.white ,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  "images/salad.png",
                  height: 40,
                  width: 40,
                  color: activeItem.saladGetter ?  Colors.green :Colors.black,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // burger
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              activeItem.activeStatusBurger();
            },
            child: Material(
              elevation: activeItem.burgerGetter ? 40 : 5,
              shadowColor: Colors.grey,
              surfaceTintColor:
                  activeItem.burgerGetter ? Colors.yellow  :  Colors.white,
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  "images/burger.png",
                  height: 40,
                  width: 40,
                  color: activeItem.burgerGetter ? Colors.brown  : Colors.black,
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
