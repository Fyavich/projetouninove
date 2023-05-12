import 'package:flutter/material.dart';

import '../theme/dark_theme.dart';
import '../theme/light_theme.dart';

class InfoIPCA extends StatefulWidget {
  const InfoIPCA({Key? key}) : super(key: key);

  @override
  State<InfoIPCA> createState() => _InfoIPCAState();
}

enum ThemeType{
  light,
  dark
}

class _InfoIPCAState extends State<InfoIPCA> {
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
          title: const Text('IPCA'),
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