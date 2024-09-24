import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class  _SignUpState extends State<SignUp>{
static final String id = "SignUp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:<Widget> [
                    Text(
                      "Register",
                      style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ), ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 400,
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Colors.black
                        ),
                        border: OutlineInputBorder(
                        ),
                      ),
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.black
                        ),
                        border: OutlineInputBorder(
                        ),
                      ),
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: GestureDetector(
                          onTap: (){
                            FocusScope.of(context).unfocus();
                          },
                          child: Icon(Icons.visibility, color: Colors.black,),
                        ),
                        hintStyle: TextStyle(
                            color: Colors.black
                        ),
                        border: OutlineInputBorder(
                        ),
                      ),
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Phone number",
                        hintStyle: TextStyle(
                            color: Colors.black
                        ),
                        border: OutlineInputBorder(
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child:ElevatedButton(
                          child: Text("Register"),
                          // color: Colors.blueGrey[400],
                          onPressed: (){}) ,
                    ),
                    Row(
                      children:[
                        Text("I already have an account!"),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 20,
                                fontWeight: FontWeight.bold ),),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

