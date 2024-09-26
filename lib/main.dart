import 'package:elegant_essence/signup.dart';
import 'package:flutter/material.dart';
import 'package:elegant_essence/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: SignUp.id,
      routes: {
        SignUp.id: (context) => SignUp(),
        Login.id: (context) => Login(),
      },

      theme: ThemeData(
        primaryColor: Color(0xffaf7373),
        scaffoldBackgroundColor: Colors.white,
        // visualDensity: VisualDensity.adaptivePlatformDensity.
      ),

    );
  }
}