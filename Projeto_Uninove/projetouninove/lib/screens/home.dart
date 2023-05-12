import 'package:flutter/material.dart';
import 'package:projetouninove/screens/info_dollar.dart';
import 'package:projetouninove/screens/info_euro.dart';
import 'package:projetouninove/screens/info_ipca.dart';
import 'package:projetouninove/screens/info_selic.dart';
import 'package:projetouninove/theme/dark_theme.dart';
import 'package:projetouninove/theme/light_theme.dart';


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
          title: const Text('SBTN'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              _toggleTheme();
              tooltip: 'Toggle Theme';
            }, icon: const Icon(Icons.dark_mode_outlined))
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                IPCACard(),
                SelicCard()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                DollarCard(),
                EuroCard()
              ],
            )
          ],
        )
      )
    );
  }
}

// Cards com os Tópicos
class IPCACard extends StatelessWidget {
  const IPCACard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InfoIPCA())
          );
        },
        child: Card(
          margin: const EdgeInsets.fromLTRB(15, 30, 10, 0),
          color: Theme.of(context).brightness == Brightness.light ? const Color.fromRGBO(
              201, 182, 241, 1.0) : const Color.fromRGBO(49, 51, 52, 1.0),
          child: const SizedBox(
              width: 200,
              height: 100,
              child: Center(
                  child: Text(
                      'IPCA - Inflação',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20)
                  )
              )
          ),
        )
    );
  }
}

class SelicCard extends StatelessWidget {
  const SelicCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InfoSelic())
          );
        },
        child: Card(
          margin: const EdgeInsets.fromLTRB(15, 30, 10, 0),
          color: Theme.of(context).brightness == Brightness.light ? const Color.fromRGBO(
              201, 182, 241, 1.0) : const Color.fromRGBO(49, 51, 52, 1.0),
          child: const SizedBox(
              width: 200,
              height: 100,
              child: Center(
                  child: Text(
                      'Selic Meta',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20)
                  )
              )
          ),
        )
    );
  }
}

class DollarCard extends StatelessWidget {
  const DollarCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InfoDollar())
          );
        },
        child: Card(
          margin: const EdgeInsets.fromLTRB(15, 30, 10, 0),
          color: Theme.of(context).brightness == Brightness.light ? const Color.fromRGBO(
              201, 182, 241, 1.0) : const Color.fromRGBO(49, 51, 52, 1.0),
          child: const SizedBox(
              width: 200,
              height: 100,
              child: Center(
                  child: Text(
                      'Cotação Dolar',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20)
                  )
              )
          ),
        )
    );
  }
}

class EuroCard extends StatelessWidget {
  const EuroCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InfoEuro())
          );
        },
        child: Card(
          margin: const EdgeInsets.fromLTRB(15, 30, 10, 0),
          color: Theme.of(context).brightness == Brightness.light ? const Color.fromRGBO(
              201, 182, 241, 1.0) : const Color.fromRGBO(49, 51, 52, 1.0),
          child: const SizedBox(
              width: 200,
              height: 100,
              child: Center(
                  child: Text(
                      'Cotação Euro',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20)
                  )
              )
          ),
        )
    );
  }
}

