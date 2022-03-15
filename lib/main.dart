import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/pages/login_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

          themeMode: ThemeMode.light,

      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(
        brightness: Brightness.light
      ),

      routes: {
        "/": (context) =>  LoginPage(),
        "/home": (context) =>  HomePage(),
        "/login": (context) =>  LoginPage(),
      },
    );


  }
}
