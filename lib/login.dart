import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static final String id = "Login";
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Login", style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
