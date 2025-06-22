import 'dart:ffi';

///
///Funcoes Arrow tem o retorno implicito!
///

funcaoArrow() {
  print('06.2) Funcoes Arrow\n');

  String conceito() => 'Funcao Arrow com retorno implicito';

  String somarValores(int valorA, int valorB) => 'Soma: $valorA + $valorB = ${valorA + valorB}';

  String verificarMaiorIdade(String nome, int i) => (i >= 18) ? '$nome e maior de idade' : '$nome nao e maior de idade';

  String calcularAreaDoCirculo(int raio) => 'Area do circulo: ${3.14 * raio * raio}';

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;
  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado: $nome salario: $total');
  }

  print(conceito());
  print(somarValores(2, 3));
  print(verificarMaiorIdade('Alvaro', 16));
  print(calcularAreaDoCirculo(2));
  calcularSalario('Alvaro', 900, 100, 2);
}

void main() {
  funcaoArrow();
}
