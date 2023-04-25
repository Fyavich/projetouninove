void main() {
  // Introdução à Variáveis
  // A declaração das variáveis segue o formato '${}' !!!

  String nome = "Francisco";
  print("Nome: " + '${nome}');

  int idade = 29;
  print("Idade: " + '${idade}');

  bool teste = true;
  print("Teste: " + '${teste}');

  List<String> listaDePalavras = ["Francisco", "Paulo"];
  print("Lista 1: " + '${listaDePalavras}');
  print("Lista 2: " + '${listaDePalavras[0]} - ${listaDePalavras[1]}');

  bool seguirEmFrente = false;

  if (seguirEmFrente) {
    print("Andar");
  } else {
    print("Parar");
  }

  int valorInt = 1;
  switch (valorInt) {
    case 0:
      print("Zero");
      break;
    case 1:
      print("Um");
      break;
    case 2:
      print("Dois");
      break;
    default:
      print("Fora do range");
      break;
  }

  // Métodos e Classes

  Celular celularFran = Celular("Azul", 5, 0.800, 5.7);
  Celular celularPaulo = Celular("Preto", 10, 0.100, 5.7);

  print(celularFran.toString());

  print(celularFran.valorDoCelular(1000));
  print(celularFran.valorCelular);
}

// Métodos e Classes
class Celular {
  final String cor;
  final int qtdPros;
  final double tamanho;
  final double peso;
  double _valor = 1000; // Variável Privada - Não pode ser acessada de fora
  double get valorCelular => _valor;

  // Construtor para receber valores depois
  Celular(this.cor, this.qtdPros, this.peso, this.tamanho);

  // Método
  String toString() {
    return "Cor $cor, qtdPros $qtdPros, Peso $peso, Tamanho $tamanho";
  }

  double valorDoCelular(double valor) {
    return valor * qtdPros;
  }
}
