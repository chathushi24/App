import 'package:flutter/material.dart';
import 'package:elegant_essence/login.dart';
import 'package:elegant_essence/signup.dart';
import 'package:elegant_essence/layout.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});
  static final String id = "homepage";

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ELEGANT ESSENCE",
      home: Scaffold(
        body: Column(
            Text("HELLO"),
            // ElevatedButton(
            //   onPressed: (){
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const Login()),
            //     );
            //   },
            //   child: Text("Login"),
            // ),
            // ElevatedButton(
            //     onPressed:(){
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => SignUp()),
            //       );
            //     },
            //   child: Text("SignUp"),
            // ),
        ),
      ),
    );
  }
}

