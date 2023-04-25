import 'dart:convert';

void main() {
  String json = '''
    {
      "usuario": "fran@gmail.com",
      "senha": "123456",
      "permissoes": [
        "owner", "admin"
      ]
    }
  ''';

  print(json);

  Map resultJson = jsonDecode(json);
  print(resultJson['usuario']);

  Map mapa = {
    'nome': 'francisco',
    'pass': 123,
    'permissions': ['owner', 'admin']
  };

  var result = jsonEncode(mapa);
  print(result);
}
