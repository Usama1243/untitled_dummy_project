import 'package:flutter/material.dart';
import 'package:untitled/utils/custom_padding.dart';
import 'package:untitled/utils/custom_text_styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = "Usama!";
    return Scaffold(
      body: CustomAppPadding(
        child: Column(
          children: [
            Text(
              "Hello, $userName",
              style: AppTextStyle.heading,
            ),
          ],
        ),
      ),
    );
  }
}
