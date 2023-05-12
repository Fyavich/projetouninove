import 'package:flutter/material.dart';

import '../theme/dark_theme.dart';
import '../theme/light_theme.dart';

class InfoSelic extends StatefulWidget {
  const InfoSelic({Key? key}) : super(key: key);

  @override
  State<InfoSelic> createState() => _InfoSelicState();
}

enum ThemeType{
  light,
  dark
}

class _InfoSelicState extends State<InfoSelic> {
  ThemeType _themeType = ThemeType.light;

  void _toggleTheme(){
    setState(() {
      _themeType = _themeType == ThemeType.light ? ThemeType.dark : ThemeType.light;
    });
  }

  ThemeData _getThemeData() {
    switch (_themeType) {
      case ThemeType.light:
        return lightTheme();
      case ThemeType.dark:
        return darkTheme();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _getThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SELIC'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              _toggleTheme();
              tooltip: 'Toggle Theme';
            }, icon: const Icon(Icons.dark_mode_outlined))
          ],
        ),
        body: Column(),
      ),
    );
  }
}