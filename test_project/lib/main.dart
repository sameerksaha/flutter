import 'package:flutter/material.dart';



void main() {
  runApp(TestApp());

}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String name = "Sameer";
    return MaterialApp(
      home: Material(
      child:  Center(
        child: Container(
          child: Text("Welcome to My App, $name"),
          ),
      ),
      ),
    );
  }
}