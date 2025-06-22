void main() {
  print('01-Variaveis Funcoes');
  num pi = 3.14; //num recebe int ou double
  print(pi.floor()); //.floor usado para arredondar variaveis fraccionarias
  print(pi.round()); //arredonda para o inteiro mais proximo
  print(pi.ceil()); //arredonda para o inteiro mais proximo maior
  print(pi.clamp(3, 1000)); //mostra o inteiro que mais se aproxima ao valor da variavel dentro de um determinado intervalo
  print(pi.compareTo(3)); //retorna -1 se for inferior ao numero comparado, 0 se for igual e 1 se for maior
  print(pi.remainder(3)); //resto da divisao com o numero 3
  print(pi.toInt());
  print(2.toDouble());
  print(pi.toString());
  print(pi.toStringAsFixed(1)); //numero de casas decimais a ser abreviada
  print(pi.truncate()); //descarta a parte farccionaria
  print(pi.isNegative);
  print(pi.isInfinite);
  print((pi / 0).isInfinite);
  print(12.gcd(16)); //para achar o maximo divisor comum de 2 numeros diferentes

  String nome = 'Fernando';
  String nomeCompleto = '\t Fernando Martinho';
  print(nome.toLowerCase());
  print(nome.toUpperCase());
  print(nomeCompleto.trim()); //remove os espacos do inicio e do fim
  print(nome.split('')); //variavel dividida e retonrnada como um array[F, e, r, n, a, n, d, o]
  print(nome.substring(3, 8)); //funciona como o length, separando as letras do string com base numa posicao inicial e final
  print(nome.startsWith('F')); // retorna true ou false se o nome comecar com a letra F
  print(nome.startsWith('nando', 3));
  print(nome.replaceAll('a', 'z')); // substitui todos os caracteres 'from', 'to'
  print(nome.replaceFirst('Fer', '')); //substituindo Fer por uma string vazia
  print(nome.replaceFirst('o', 'i', 7)); //fazendo a substituicao no indice
  print(nome.replaceRange(3, 5, '')); //substituindo os indices 3 e 5 por uma string vazia
  print(nome.contains('f')); //true or false function to determine if the variable contains the letter 'f' (no caps)
  print(nome.indexOf('F')); //retorna o indice de acordo com a referencia 'F'
  print(nome.length); //retorna o comprimento do array
  print(nome.endsWith('o')); //confirma se a variavel termina com a letra O
  print("\n");
  print(nome.compareTo('Fernando')); //0 se for igual
  print(nome.compareTo('Fer')); //1 se possui
  print(nome.compareTo('Lidiane')); //-1 diferente
  print(''.isEmpty); //checa se e uma string vazia

  print(double.parse('12.55')); //'12.55'
  print(nome.lastIndexOf('a')); //print the last index that contains the parameter 'a'

  //selecionando caracteres especificos dentro de uma variavel tipo string INTERPOLATION
  String sopa = 'sopa de letrinhas';
  int index = sopa.indexOf('de');
  print('A sopa e ${sopa.substring(index).trim()}');

  //funcao muito usada para formatacao de datas entre outros: padleft & padright
  print('1'.padLeft(2, '0')); //'1' e o numero printado, 2 e o numero de casas decimais e '0' e o numero a ser posicionada a esquerda

  print('');
  num numero = 3.14;
  print(numero is double);
  print(numero is! double);
}
