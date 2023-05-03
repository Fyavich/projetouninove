import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> _cidades = [
    'Aracaju',
    'Belém',
    'Belo Horizonte',
    'Boa Vista',
    'Brasília',
    'Campo Grande',
    'Cuiabá',
    'Curitiba',
    'Florianópolis',
    'Fortaleza',
    'Goiânia',
    'João Pessoa',
    'Macapá',
    'Maceió',
    'Manaus',
    'Natal',
    'Palmas',
    'Porto Alegre',
    'Porto Velho',
    'Recife',
    'Rio Branco',
    'Rio de Janeiro',
    'São Paulo',
    'Salvador',
    'São Luís',
    'Teresina',
    'Vitória'
  ];

  String _cidadeSelecionada = 'São Paulo';

  carregaClima() async {

    const String _apiURL = 'api.openweathermap.org';
    const String _path = '/data/2.5/weather';
    const String _appId = '5c28a3dcf6ca5af147023ab4a6897d84'; //chave API
    const String _units = 'metric';
    const String _lang = 'pt_br';

    final _parametros = {
      'q' : _cidadeSelecionada,
      'appid': _appId,
      'units': _units,
      'lang': _lang,
    };

    final climaResponse = await http.get(Uri.https(_apiURL, _path, _parametros));
    print('URL: ' + climaResponse.request!.url.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_cidadeSelecionada),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            DropdownSearch<String>(
              items: _cidades,
              selectedItem: 'São Paulo',
              onChanged: (value) {
                setState(() {
                  _cidadeSelecionada = value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
