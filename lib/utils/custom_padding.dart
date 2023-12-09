import 'package:flutter/material.dart';

class CustomAppPadding extends StatelessWidget {
  Widget child;

  CustomAppPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: child,
    );
  }
}

class CustomVerticalPadding extends StatelessWidget {
  Widget child;

  CustomVerticalPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: child,
    );
  }
}
