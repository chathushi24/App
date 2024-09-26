import 'package:elegant_essence/signup.dart';
import 'package:flutter/material.dart';
import 'package:elegant_essence/login.dart';
import 'package:elegant_essence/home.dart';
import 'package:elegant_essence/layout.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const homepage(),
         SignUp.id: (context) => SignUp(),
        Login.id: (context) => const Login(),
        MainLayout.id: (context) => const MainLayout(),
      },


      theme: ThemeData(
        primaryColor: Color(0xffaf7373),
        scaffoldBackgroundColor: Colors.white,
        // visualDensity: VisualDensity.adaptivePlatformDensity.
      ),

    );
  }
}

