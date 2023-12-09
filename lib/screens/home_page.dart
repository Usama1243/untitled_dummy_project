import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/provider_home_page.dart';
import 'package:untitled/utils/custom_padding.dart';
import 'package:untitled/utils/custom_spacers.dart';
import 'package:untitled/utils/custom_text_styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String userName = "Usama!";
    return Scaffold(
      body: CustomAppPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Hello, User
            HelloUser(userName: userName),
            AppSpacer.spacer20H,
            const Text(
              "Delicious Food",
              style: AppTextStyle.heading24B,
            ),
            const Text(
              "Discover and Get Great Food",
              style: AppTextStyle.lightHeading16B,
            ),
            AppSpacer.spacer10H,
            const FoodCategories(),
          ],
        ),
      ),
    );
  }
}

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

class HelloUser extends StatelessWidget {
  final String userName;

  const HelloUser({
    super.key,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Hello, $userName",
          style: AppTextStyle.heading20B,
        ),
        Container(
            decoration: const BoxDecoration(
                color: Colors.black, shape: BoxShape.circle),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                size: 15,
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            )),
      ],
    );
  }
}
