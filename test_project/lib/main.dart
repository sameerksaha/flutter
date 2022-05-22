import 'package:flutter/material.dart';
import 'package:test_project/pages/home_page.dart';
import 'package:test_project/pages/login_page.dart';



void main() {
  runApp(TestApp());

}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;    // return integers
    String name = "Sameer"; // return strings
    double pi = 3.14; // return in float
    bool isMale = true; // return true or false
    num number = 5;  // return any number format, it may be integer or float
    var check = 0;   // Dart identifies itself what the datatype can be
    const pi_val = 3.14; // never changes its value

    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    );
  }
}