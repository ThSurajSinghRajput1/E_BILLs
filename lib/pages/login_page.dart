import 'package:flutter/material.dart';






class LoginPage extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/img/login_img.png",fit: BoxFit.cover,),
     
          Text("Welcome",
            style:TextStyle(
            fontSize: 29,
              fontWeight: FontWeight.bold,
            )
          ),
          SizedBox(
            height: 20,
          ),
          Padding(padding: const EdgeInsets.all(16.0)),
          Column(children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter username",
                labelText: "username",
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(

                hintText: "Enter password",
                labelText: "password",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(

                onPressed: () {},
                child: Text("Login")),


          ],)
        ],
      )
    );


  }
}
