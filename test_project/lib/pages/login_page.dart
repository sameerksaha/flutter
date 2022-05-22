// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 80.0,
          ),
          Image.asset("assets/images/login_image.png",
          fit: BoxFit.cover,
          ),
          SizedBox(
            height: 24.0,
          ),
          Text("Welcome to The Revolution !!", style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ), ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 36.0),
            child: Column(children: [
                        TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Your User Name",
                labelText: "User Name",
                labelStyle: TextStyle(
                  fontSize: 18, color: Colors.deepPurple, fontWeight: FontWeight.bold
                )
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                labelText: "Password",
                labelStyle: TextStyle(
                  fontSize: 18, color: Colors.deepPurple, fontWeight: FontWeight.bold
                )
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(onPressed: (){
              print("Hi, Sameer!!");
            }, 
            child: Text("Login"),
            style: TextButton.styleFrom(backgroundColor: Colors.deepPurpleAccent),
            )

           ],
            
            ),
          )
          ],
      ),
      


    );
  }
}