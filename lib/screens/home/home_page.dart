import 'package:flutter/material.dart';
import 'package:untitled/screens/home/widgets/food_categories.dart';
import 'package:untitled/screens/home/widgets/hello_user.dart';
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
              style: AppTextStyle.style24B,
            ),
            const Text(
              "Discover and Get Great Food",
              style: AppTextStyle.lightStyle15B,
            ),
            AppSpacer.spacer10H,
            //Food Categories
            const FoodCategories(),
            AppSpacer.spacer20H,

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8 , vertical: 20.0),
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8 , vertical: 20.0),
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      child: CustomAllPadding(
                        value: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
