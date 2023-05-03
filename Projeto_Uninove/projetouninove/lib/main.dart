import 'package:flutter/material.dart';
import 'package:projetouninove/screens/home.dart';
import 'package:projetouninove/theme/dark_theme.dart';
import 'package:projetouninove/theme/light_theme.dart';

void main(){
  runApp(const projetouninove());
}

class projetouninove extends StatelessWidget {
  const projetouninove({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      title: 'SBTN',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
    );
  }
}
