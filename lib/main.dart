import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/get_user_data.dart';
import 'package:untitled/home_page.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
 await WidgetsFlutterBinding.ensureInitialized();
  Fluttertoast.showToast;

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const MyHomePage()
    );
  }
}
