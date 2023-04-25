void main() async {
  // Future, Async e Await

  String nome = "Francisco";
  Future<String> cepFuture = getCepByName("Rua JK");
  late String cep;

  //cepFuture.then((result) => cep = result);

  cep = await cepFuture;

  print(cep);
}

// Serviço Externo
Future<String> getCepByName(String name) {
  // Simulando requisição externa
  return Future.value("86038000");
}
