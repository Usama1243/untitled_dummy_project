import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


const String kUriPrefix = 'https://nearcircle.page.link';

class CustomToastMessages {
  //Flutter Toast Messages
  static successMessage(message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static errorMessage(message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  /// SnackBar
  static snackBarWidget(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
  /// FlushBar
  // static flushBarErrorWidget(BuildContext context, String message) {
  //   showFlushbar(
  //     context: context,
  //     flushbar: Flushbar(
  //       message: message,
  //       backgroundColor: Colors.redAccent,
  //       forwardAnimationCurve: Curves.elasticInOut,
  //       reverseAnimationCurve: Curves.elasticInOut,
  //       duration: const Duration(seconds: 2),
  //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  //       margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  //       positionOffset: 20,
  //       flushbarPosition: FlushbarPosition.TOP,
  //     )..show(context),
  //   );
  // }
}
