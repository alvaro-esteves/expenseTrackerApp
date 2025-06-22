void main() {
  print('02 - Operadores Logicos (&& || !)');

  ///operador && somente se ambas afirmacoes forem true o retorno sera true
  ///operador || precisa somente de uma afirmacao verdadeira para retornar true
  ///operador ! inverte o valor booleano

  var verdadeiro = !false;
  bool falso = !true;
  print('Verdadeiro = $verdadeiro Falso = $falso');
  print('Operador (!) !true = ${!true} !false ${!false}');
  bool teste1 = verdadeiro && verdadeiro;
  bool teste2 = verdadeiro && falso;
  bool teste3 = falso && falso; // || = OU
  print(teste2);

  //exemplos:
  bool operacao = (1 <= 2) && (3 > 2);
  print(operacao);
  operacao = !(1 > 2) && ((3 < 2) || falso);
  print(operacao);
}
