import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class YourWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("addData").snapshots(),
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          // Data is available in snapshot.data.documents
          List<DocumentSnapshot<Map<String, dynamic>>> documents =
              snapshot.data!.docs;

          return ListView.builder(
            itemCount: documents.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> data = documents[index].data()!;
              return Column(
                children: [
                  Text('First Name: ${data['firstName']}'),
                  Text('Last Name: ${data['lastName']}'),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
