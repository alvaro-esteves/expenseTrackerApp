void main() {
  print('(02.2) Operadores Aritimeticos (+ - * / ~/ %), incremento ( += ++), e assignacao( = ?? )\n');

  var peso = 10;
  // peso = peso + 5;
  peso += 5;
  //peso++; //incrementa de 1 em 1
  print(peso);

  var a, b, c, d, e, f;
  a = 3;
  b = ++a; // incrementa a antes que b receba o valor
  print('a: $a b: $b');

  c = ++a / --b;
  print('a: $a b: $b');
  print(c);

  d = a ~/ b; // divisao sem resto
  print('c: $c, d: $d');

  var valorA = 9, valorB = 2;
  print('ex: 9 ~/ 2 = ${valorA ~/ valorB}');

  e = 1;
  f = e;
  f = null;
  f ??= ++e; //assignacao checa o valor a esquerda e se for nulo, retorna o valor a direita
  print('e: $e f: $f');

  var x, y, z;
  z = 1;
  x = y ?? z; //x recebe o valor de y, a menos que seja nulo, entao x recebe o valor de z
  print('x: $x');

  var nome = null;
  print('nome: ${nome ?? 'Fernando'}\n'); //se a variavel for nula, recebe o valor string

  var numero = 12;
  var par = numero % 2 == 0;
  var impar = numero % 2 != 0;
  var positivo = numero >= 0;
  var negativo = numero < 0;
  print('numero: $numero Par: $par impar: $impar positivo: $positivo negativo: $negativo\n');

  var multiplo = 3;
  print('numero: $numero e multiplo de $multiplo? ${numero % multiplo == 0}');

  int dividendo = 19, divisor = 4;
  double quociente = dividendo / divisor;
  int resto = dividendo % divisor; // % representa o resto da divisao
  bool exata = resto == 0;
  print('Quciente: $quociente Exata: $exata Resto: $resto\n');
}
