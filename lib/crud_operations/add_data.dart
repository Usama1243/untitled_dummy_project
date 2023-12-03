import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'package:untitled/utils/custom_toast_messages.dart';

class AddDataFireStore {
  Future<void> addUser(firstName, lastName) {
    return FirebaseFirestore.instance
        .collection("addData")
        .doc()
        .set({'firstName': firstName, 'lastName': lastName}).then((value) {
      CustomToastMessages().successMessage("Data Added Successfully");
    }).catchError((error) {
      debugPrint("Failed to add user: $error");
    });
  }
}
