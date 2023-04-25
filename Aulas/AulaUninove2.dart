void main() {
  saudar("Thiago", "Trauer");

  falarOi("Francisco", "Yavich");
  falarOi("Francisco", "Yavich", mostrarHorario: true);

  int base = 3;
  int altura = 10;
  double area = calcularAreaTriangulo(base: 3, altura: 10);

  print("A área do triângulo é $area");
}

void saudar(String nome, String sobrenome) {
  print("Olá $nome $sobrenome, tudo bem?! Seja bem-vinde!");
}

void falarOi(String nome, String sobrenome, {bool mostrarHorario = false}) {
  print("Olá $nome $sobrenome!");
  if (mostrarHorario) {
    print("Agora são ${DateTime.now()}");
  }
}

double calcularAreaTriangulo({required int base, required int altura}) {
  double area = (base * altura) / 2;
  return area;
}
