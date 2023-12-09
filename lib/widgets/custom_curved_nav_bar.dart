import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/add_to_card/add_to_card.dart';
import 'package:untitled/screens/home/home_page.dart';

class CustomNavBar extends StatefulWidget  {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> pages = [
    const Home(),
    const AddToCart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: const [
          Icon(Icons.restaurant_menu, size: 25,color: Colors.white,),
          Icon(Icons.shopping_cart_outlined, size: 25,color: Colors.white,),
          Icon(Icons.compare_arrows, size: 25,color: Colors.white,),
          Icon(Icons.call_split, size: 25,color: Colors.white,),
          Icon(Icons.person_2_outlined, size: 25,color: Colors.white,),
        ],
        color: Colors.black,
        buttonBackgroundColor: Colors.black,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeOutQuart,
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: pages[_page],
    );
  }
}
