import 'package:flutter/material.dart';

ThemeData darkTheme(){
  return ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(color: Color.fromRGBO(58, 59, 61, 1.0)),
    scaffoldBackgroundColor: const Color.fromRGBO(26, 28, 26, 1.0),
    textTheme: const TextTheme(
      displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
      headlineMedium: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
    ),
  );
}