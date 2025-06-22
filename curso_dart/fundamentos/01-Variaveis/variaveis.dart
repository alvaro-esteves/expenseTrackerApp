void main() {
  print('01.0) Variaveis');

  /*
  "backspace" : "\b",
  "formfeed" : "\f",
  "newline" : "\n",
  "return" : "\r", 
  "tab" : "\t",

  */

  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  double resultado;
  resultado = valorA + valorB + valorC;
  print(resultado);

  print('');

  var salario = 1000, descontos = 250;
  var conta = salario - descontos;
  print(conta);

  print('');

  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);

  print('');

  print('concatenar '
      'strings é simples '
      'assim');

  var texto1 = '\nNome ';
  var texto2 = "Sobrenome";
  var texto3 = '''\n e 
cônjuge\n''';

  var nome = texto1 + texto2 + texto3;
  print(nome);

  var verdadeiro = true;
  var falso = false;
  // $ variaveis //${} operacoes
  print('verdadeiro = $verdadeiro'); //interpolaaçao
  print('falso = ' "$falso"); //concatenacao
  print(''.runtimeType); // printa o tipo de variavel que esta sendo trabalhada (em execucao)

  const pi = 3.14; //por mais que dart reconheca o tipo de variavel mesmo sem haver especificacao, o tipo deve ser especificado
  nome = 'Fernando';
  String sobrenome = 'Martins';
  int idade = 36;
  double altura = 1.83;
  bool adulto = true;
  print('\nnome: $nome \nQtd letras: ${nome.length}\nSobrenome: $sobrenome \nQtd letras ${sobrenome.length}\n');

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = 'dois';
  variavel = true;
  print(variavel); //variavel possui e printa o ultimo valor concatenado
}
