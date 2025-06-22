//?EXERCICIO 1
saudacao(String nome) {
  print('Ola $nome');
}

//?EXERCICIO 2
quadrado(List numero) {
  numero.forEach((e) {
    print('${e * e}');
  });
}

//?EXERCICIO 3
imprimirDados({String? nome, int? idade}) {
  print('Nome: $nome, Idade: $idade');
}

//?EXERCICIO 4
String calcularPreco([double? produto, double desconto = 0.1]) {
  //!double resultado = produto * desconto; APLICAR TERNARIO
  double conta = produto! - (produto! * desconto);
  return 'Valor final com desconto: ${(produto == null) ? 'indefinido' : '$conta'} ';
}

//?EXERCICIO 5
realizarOperacao({int? a, int? b, Function? funcao}) {
  return funcao == null ? 'undefined' : funcao(a, b);
}

void main() {
  saudacao('Alvaro');
  List<int> inteiros = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  quadrado(inteiros);
  print('');

  int dobro(int e) => e * e;
  print(dobro(3));

  imprimirDados(nome: 'Alvaro', idade: 26);
  print('');
  print(calcularPreco(100.0));
  print('');
  print(realizarOperacao(a: 3, b: 2, funcao: (a, b) => a + b));
}
