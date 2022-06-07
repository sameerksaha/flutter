// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black, ),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20, ) ,
          centerTitle: true

        )
        );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark
    );
}