import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/screens/item_details/provider_item_details/provider_item_detail.dart';
import 'package:untitled/utils/custom_padding.dart';
import 'package:untitled/utils/custom_spacers.dart';
import 'package:untitled/utils/custom_text_styles.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomAppPadding(
      child:
          Consumer<ItemDetailProvider>(builder: (context, itemDetail, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spacer20H,
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
              ),
            ),
            Image.asset(
              "images/salad2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            spacer10H,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      "Mediterranean",
                      style: AppTextStyle.style15B,
                    ),
                    Text(
                      "Mediterranean",
                      style: AppTextStyle.style20B,
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        itemDetail.removeQuantity();
                      },
                      child: Material(
                        elevation: 5,
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "${itemDetail.quantity}",
                        style: AppTextStyle.style12B,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        itemDetail.addQuantity();
                      },
                      child: Material(
                        elevation: 5,
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
              style: AppTextStyle.lightStyle12,
            ),
            spacer10H,
            const Row(
              children: [
                Text(
                  "Delivery Time",
                  style: AppTextStyle.style12B,
                ),
                spacer20W,
                Row(
                  children: [
                    Icon(
                      Icons.alarm,
                      size: 20,
                      color: Colors.black54,
                    ),
                    spacer5W,
                    Text(
                      "30 min",
                      style: AppTextStyle.style12B,
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            const Text("Total Price", style: AppTextStyle.style20B),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "\$28",
                  style: AppTextStyle.style20B,
                ),
                Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add to cart",
                        style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),
                      ),
                      spacer5W,
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        );
      }),
    ));
  }
}
