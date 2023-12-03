import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled/utils/custom_toast_messages.dart';

class DeleteDataFireStore {
  CollectionReference users = FirebaseFirestore.instance.collection('addData');

  Future<void> deleteDocument() {
    return users
        .doc("DCX9IfMfi3Mg055FCweR")
        .delete()
        .then((value) => CustomToastMessages.successMessage("User Deleted"))
        .catchError((error) => print("Failed to delete user: $error"));
  }

  Future<void> deleteField() {
    return users
        .doc('C4LIcE6LMIK8T2CVbypI')
        .update({'lastName': FieldValue.delete()})
        .then((value) =>
            CustomToastMessages.successMessage("User's Property Deleted"))
        .catchError(
            (error) => print("Failed to delete user's property: $error"));
  }
}
