import 'package:flutter/material.dart';
import 'package:uniclima/screens/home.dart';

void main(){
  runApp(const UniClima());
}

class UniClima extends StatelessWidget {
  const UniClima({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      title: "UniClima",
      debugShowCheckedModeBanner: false,
    );
  }
}
