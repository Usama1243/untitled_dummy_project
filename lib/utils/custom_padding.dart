// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppPadding extends StatelessWidget {
  Widget child;

  AppPadding({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    MediaQuery.sizeOf(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.04,
      ),
      child: child,
    );
  }
}

class ContentPadding extends StatelessWidget {
  Widget child;

  ContentPadding({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    MediaQuery.sizeOf(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.sizeOf(context).height * 0.015,
      ),
      child: child,
    );
  }
}
