void main() {
  print('(03.0) Condicionais (if & else)');

  if (!true) {
    print('Verdadeiro');
  } else {
    print('falso');
  }

  int idade = 17;
  if (idade >= 18) {
    print('maior');
  } else {
    print('menor');
  }

  idade = 17;
  if (idade < 14) {
    print('crianca');
  } else if (/*idade < 18*/ idade >= 14 && idade <= 17) {
    print('adolescente');
  } else {
    print('adulto');
  }

  //conversao de variaveis
  String textoInt = '10';
  String textoDouble = '10.12345';
  int numeroInt = int.parse(textoInt);
  var numeroDouble = double.parse(textoDouble).toStringAsFixed(2); //converting the variable from double to string
  print('ParseInt:  $numeroInt ParseDouble: $numeroDouble');
  print('ParseString: ${numeroDouble.toString()}\n'); //converting the variable from double to string while printing

  double peso = 90;
  double altura = 1.92;
  var tmp = peso / (altura * altura);
  //convertendo a variaval para string para poder escolher quantas casas decimais devem ser apresentadas:
  double imc = double.parse(tmp.toStringAsFixed(2));
  if (imc < 18.5) {
    print('IMC $imc Abaixo do Peso');
  } else if (imc >= 18.5 && imc < 25) {
    print('IMC $imc Peso Normal');
  } else if (imc >= 25 && imc < 30) {
    print('IMC $imc Sobrepeso');
  } else if (imc >= 30 && imc < 35) {
    print('IMC $imc Obesidade grau 1');
  } else if (imc >= 35 && imc < 40) {
    print('IMC $imc Obesidade grau 2');
  } else {
    print('IMC $imc Obesidade grau 3');
  }
}
