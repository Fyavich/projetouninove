import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

enum ThemeType{
  light,
  dark
}

class _HomeState extends State<Home> {
  ThemeType _themeType = ThemeType.light;

  void _toggleTheme(){
    setState(() {
      _themeType = _themeType == ThemeType.light ? ThemeType.dark : ThemeType.light;
    });
  }

  ThemeData _getThemeData() {
    switch (_themeType) {
      case ThemeType.light:
        return ThemeData.light();
      case ThemeType.dark:
        return ThemeData.dark();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _getThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('SBTN'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              _toggleTheme();
              tooltip: 'Toggle Theme';
            }, icon: Icon(Icons.dark_mode_outlined))
          ],
        ),
        body: Center(

        ),
      ),
    );
  }
}
