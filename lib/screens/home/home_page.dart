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
