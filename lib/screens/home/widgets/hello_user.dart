import 'package:flutter/material.dart';
import 'package:untitled/utils/custom_text_styles.dart';

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