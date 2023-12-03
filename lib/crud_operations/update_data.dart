import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled/utils/custom_toast_messages.dart';

class UpdateDataFireStore {
  CollectionReference users = FirebaseFirestore.instance.collection('addData');

  Future<void> updateUser() {
    return users
        .doc('2tOxSAJT5yUpe3NI2H9h')
        .update({'firstName': "aneela"})
        .then((value) => CustomToastMessages.successMessage("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }
}
