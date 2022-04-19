import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/routes/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  String name = " ";
  moveToHome(BuildContext context) {}
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/img/login_img.png",
                fit: BoxFit.cover,
              ),
              Text("Welcome $name",
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(padding: const EdgeInsets.all(16.0)),
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "enter sernme",
                      labelText: "UserName",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "username can not empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "enter Password",
                      labelText: "Password??",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  /* ElevatedButton(
                   onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  style: TextButton.styleFrom(minimumSize: Size(200, 50)),
                  child: Text("Login")),

               */
                  InkWell(
                    splashColor: Colors.red,
                    onTap: () async {
                      setState(
                        () {
                          changeButton = true;
                        },
                      );
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 25 : 8)),
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              ),
                            ),
                    ),
                  )
                ],
              )
            ],
          ),
        )));
  }
}
