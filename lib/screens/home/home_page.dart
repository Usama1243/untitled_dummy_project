import 'package:flutter/material.dart';
import 'package:untitled/screens/home/widgets/food_categories.dart';
import 'package:untitled/screens/home/widgets/hello_user.dart';
import 'package:untitled/screens/item_details/item_details.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             header,

            //Hello, User
            CustomHorizontalPadding(
                value: 15, child: HelloUser(userName: userName)),

            //Text
            CustomHorizontalPadding(
              value: 15,
              child: const Text(
                "Delicious Food",
                style: AppTextStyle.style24B,
              ),
            ),
            //Text
            CustomHorizontalPadding(
              value: 15,
              child: const Text(
                "Discover and Get Great Food",
                style: AppTextStyle.lightStyle15B,
              ),
            ),
             spacer10H,
            //Food Categories
            CustomHorizontalPadding(value: 15, child: const FoodCategories()),
             spacer10H,
            CustomHorizontalPadding(
              value: 15,
              child: const Text(
                "Hot Deals",
                style: AppTextStyle.style15B,
              ),
            ),
             spacer20H,
            //Slider of Items
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                   spacer5W,
                  for (int i = 1; i < 10; i++)
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ItemDetail()),
                        );
                      },
                      child: Container(
                          margin: const EdgeInsets.only(left: 10, bottom: 20),
                          child: Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(10),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "images/salad2.png",
                                          height: 150,
                                          width: 150,
                                        ),
                                        const Text(
                                          "Veggie Taco Hash",
                                          style: AppTextStyle.style15B,
                                        ),
                                        const Text(
                                          "Fresh and Healthy",
                                          style: AppTextStyle.lightStyle12B,
                                        ),
                                        const Text(
                                          "\$25",
                                          style: AppTextStyle.style12B,
                                        )
                                      ],
                                    ),
                                  )
                              )
                          )
                      ),
                    )
                ],
              ),
            ),
            // Row Menus
            CustomHorizontalPadding(
              value: 15,
              child: const Text(
                "Delicious Food",
                style: AppTextStyle.style15B,
              ),
            ),
             spacer10H,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                for (int i = 1; i < 10; i++)
                  CustomHorizontalVerticalPadding(
                    valueH: 15,
                    valueV: 5,
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      child: CustomAllPadding(
                        value: 10,
                        child: Row(
                          children: [
                            Image.asset(
                              "images/salad2.png",
                              height: 100,
                              width: 100,
                            ),
                             spacer20W,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width / 2,
                                  child: const Text(
                                    "Veggie Taco Hash",
                                    style: AppTextStyle.style15B,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width / 2,
                                  child: const Text(
                                    "Fresh and Healthy",
                                    style: AppTextStyle.lightStyle12B,
                                  ),
                                ),
                                const Text(
                                  "\$25",
                                  style: AppTextStyle.style12B,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
