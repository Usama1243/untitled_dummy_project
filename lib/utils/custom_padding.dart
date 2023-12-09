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

class CustomHorizontalPadding extends StatelessWidget {
  double value;

  Widget child;

  CustomHorizontalPadding(
      {super.key, required this.child, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: value),
      child: child,
    );
  }
}

class CustomVerticalPadding extends StatelessWidget {
  double value;
  Widget child;

  CustomVerticalPadding({super.key, required this.value, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: value),
      child: child,
    );
  }
}

class CustomAllPadding extends StatelessWidget {
  double value;
  Widget child;

  CustomAllPadding({super.key, required this.value, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: child,
    );
  }
}
