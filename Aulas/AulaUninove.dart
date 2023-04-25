// Desenvolvendo uma Calculadora de Bhaskara -> x = [-b ± √(b² - 4.a.c)]/2.a
import 'dart:math';

void main() {
  info();

  double x, a, b, c, delta;

  a = 1;
  b = -1;
  c = -12;

  print("\nPara a = " +
      '${a.truncate()}' +
      ", b = " +
      '${b.truncate()}' +
      ", c = " +
      '${c.truncate()}' +
      ", temos: " +
      '${a.truncate()}' +
      "x² + " +
      '${b.truncate()}' +
      "x + " +
      '${c.truncate()}' +
      " = 0");
  print("Temos: ");

  delta = deltaValue(a, b, c);

  print("\nΔ => b² - 4.a.c => " +
      '${b.truncate()}' +
      "² - 4." +
      '${a.truncate()}' +
      "." +
      '${c.truncate()}' +
      " => ${delta}");

  deltaValidation(a, b, delta);
}

void info() {
  print("Fórmula de Bhaskara\n");

  print("     -b ± √(b² - 4.a.c)");
  print("x = --------------------");
  print("            2.a");

  print(
      "\n(b² - 4.a.c), também chamado de delta (Δ), poderá apresentar os seguintes valores:\n");
  print(
      "Δ > 0 -> a equação possui duas raizes pertencentes ao Conjunto dos Números Reais (R)");
  print(
      "Δ = 0 -> a equação possui uma raiz pertencente ao Conjunto dos Números Reais (R)");
  print(
      "Δ < 0 -> a equanção não possui raiz pertencente ao Conjunto dos Números Reais (R)");
  print(
      "\nNo entanto, poderá ser resolvida utilizando o Conjunto dos Números Imaginários\n");
  print(
      "Bhaskara é utilizado para a resolução de equações do segundo grau: ax² + bx + c = 0");
}

double deltaValue(double a, double b, double c) {
  double deltaValue = (b * b) - 4 * a * c;

  return deltaValue;
}

void deltaValidation(double a, double b, double delta) {
  if (delta > 0) {
    print("\n");
    print("-b ± √Δ");
    print("-------");
    print("  2.a");

    print("\n" + '${b.truncate()}' + " ± √" + '${delta.truncate()}');
    print("-------");
    print("  2." + '${a.truncate()}');

    double raiz = sqrt(delta);
    double base = 2 * a;

    print("\n" + '${b.truncate()}' + " ± $raiz");
    print("-------");
    print("  " + '${base.truncate()}');

    Raizes raizes = raizesReais(a, b, delta);
    print("x' = ${raizes.raiz1}");
    print("x\" = ${raizes.raiz2}");
  } else if (delta == 0) {
    print("Continuar Equação 1 Raiz");
  } else {
    print("Nenhuma Raiz Real");
  }
}

class Raizes {
  double raiz1;
  double raiz2;

  Raizes(this.raiz1, this.raiz2);
}

Raizes raizesReais(double a, double b, double delta) {
  double raiz1 = (-b + sqrt(delta)) / (2 * a);
  double raiz2 = (-b - sqrt(delta)) / (2 * a);

  return Raizes(raiz1, raiz2);
}
