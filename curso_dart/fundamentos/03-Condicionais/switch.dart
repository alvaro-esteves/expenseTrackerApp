void main() {
  print('03.2) Switch\n');

  String operacao = '+'; // outros operadores podem ser utilizados tbm
  double numeroA = 12;
  double numeroB = 3;

  switch (operacao) {
    case '+':
      print('Resultado ${numeroA + numeroB}');
      break;
    case '-':
      print('Resultado ${numeroA - numeroB}');
      break;
    case '*':
      print('Resultado ${numeroA * numeroB}');
      break;
    case '/':
      print('Resultado ${numeroA / numeroB}');
      break;
    default:
      print('Operacao invalida');
  }

  int dia = 0;
  switch (dia) {
    case 0:
      print('Domingo');
    case 1:
      print('Segunda');
    case 2:
      print('Terca');
    case 3:
      print('Quarta');
    case 4:
      print('Quinta');
    case 5:
      print('Sexta');
    case 6:
      print('Sabado');
    default:
      print('opcao invalida');
  }
}
