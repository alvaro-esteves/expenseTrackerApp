void main() {
  print('(03.1) - Ternario\n');

  if (!true) {
    print('Verdadeiro');
  } else {
    print('Falso\n');
  }
  //nas expressoes ternarias, os valores a esquerda sao sempre os verdadeiros
  int idade = 17;
  print((idade < 14)
      ? 'Criança'
      : (idade < 18)
          ? 'Adolescente'
          : 'Adulto');

  int nota = 70;
  String resultado = (nota < 40)
      ? 'Reprovado'
      : (nota < 70)
          ? 'Recuperacao'
          : 'Aprovado';
  print(resultado);

  int numero = 12;
  print('Numero: $numero e ${(numero % 2 == 0) ? 'par' : 'impar'} e ${(numero >= 0) ? 'positivo' : 'negativo\n'}!');
  print(numero);

  int ano = 1984;
  print('Ano: $ano ${(ano % 4 == 0 || ano % 400 == 0 && ano % 100 != 0) ? 'e bissexto' : 'nao e bissexto'}');
}
