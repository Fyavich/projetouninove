import 'package:flutter/material.dart';

import '../theme/dark_theme.dart';
import '../theme/light_theme.dart';

class InfoEuro extends StatefulWidget {
  const InfoEuro({Key? key}) : super(key: key);

  @override
  State<InfoEuro> createState() => _InfoEuroState();
}

enum ThemeType{
  light,
  dark
}

class _InfoEuroState extends State<InfoEuro> {
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
          title: const Text('Euro'),
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
