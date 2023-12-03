import 'package:flutter/material.dart';
import 'package:untitled/utils/custom_colors.dart';

import 'crud_operations/update_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController fNameController = TextEditingController(text: "Usama");
  TextEditingController lNameController = TextEditingController(text: "Farooq");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Form with Validation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: fNameController,
                decoration: const InputDecoration(labelText: 'First Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a value for Text Field 1';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: lNameController,
                decoration: const InputDecoration(labelText: 'Last Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a value for Text Field 2';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  submitForm();

                  // add data into FireStore
                  //  AddDataFireStore().addUser(
                  //      fNameController.text.trim(), lNameController.text.trim());

                  //Update data into FireStore
                  UpdateDataFireStore().updateUser();

                  // delete data
                  //     DeleteDataFireStore().deleteField();
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: CustomColors().pink),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void submitForm() {
    // Validate the form
    if (_formKey.currentState?.validate() ?? false) {
      // Get the values from the text fields
      String value1 = fNameController.text;
      String value2 = lNameController.text;

      // You can perform any desired actions with the values here
      print('Value 1: $value1');
      print('Value 2: $value2');

      // Clear the text fields (optional)
      // fNameController.clear();
      // lNameController.clear();
    }
  }
}
