// ignore_for_file: prefer_const_constructors

import 'dart:ffi' as sz;

import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:test_project/utils/routes.dart';


class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(() {
        changebutton = true;
        });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
  }
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Material(
        color: Colors.white,
        child: SingleChildScrollView(
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
              Text("Welcome to The Revolution $name !!", style: TextStyle(
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
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Username can not be empty";
                    }
                    return null;                  
                  },
                  onChanged: (value){
                    name = value;
                    setState(() {});
                  }
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
                  validator: (value){
                    if(value!.isEmpty){
                      return "Password can not be empty";
                    }
                    else {
                      if (value.length < 6){
                      return "Password length should be atleast 6";
                    }
                    }
                    return null;                  
                  },
                ),
                SizedBox(height: 20),
    
                Material(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(changebutton?20:8),
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changebutton?50:120,
                      height: 40,
                      alignment: Alignment.center,
                      child: changebutton?Icon(Icons.done, color: Colors.white) : Text("Login", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white      
                      )),
                    ),
                  ),
                )
                // ElevatedButton(onPressed: (){
                //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                // }, 
                // child: Text("Login", style: TextStyle(fontSize: 16)),
                // style: TextButton.styleFrom(
                //   minimumSize: Size(100, 50),
                //   backgroundColor: Colors.deepPurpleAccent, 
                // )
                // ),
                
        
               ],
                
                ),
              )
              ],
          ),
        ),
        
    
    
      ),
    );
  }
}