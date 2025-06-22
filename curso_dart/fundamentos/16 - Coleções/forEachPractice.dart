///EXERCICIO 1: Exercício: Crie uma lista de strings com nomes de cidades e use o loop forEach para imprimir cada cidade.
///EXERCICIO 2: Exercício: Crie uma lista de números inteiros e use forEach para calcular e imprimir a soma de todos os números.
///EXERCICIO 3:Exercício: Crie uma lista de números e use forEach para imprimir apenas os números pares.
///EXERCICIO 4: Exercício: Crie uma lista de números com elementos duplicados e use forEach para criar uma nova lista sem duplicatas.

main() {
  Cidades();
  Numeros();
  Pares();
  Duplicata();
}

Cidades() {
  //exercicio 1
  List<String> cidades = ['RJ', 'SP', 'CU', 'PL'];
  cidades.forEach(((e) => print('cidades: $e')));
}

Numeros() {
  //exercicio 2
  List<int> numeros = [1, 2];
  int soma = 0;

  numeros.forEach((e) {
    soma += e;
  });

  print('\nSomatorio: $soma');
}

Pares() {
  //exercicio 3
  List<int> pares = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  pares.forEach((e) {
    if (e % 2 == 0) {
      print('numeros Pares $e');
    }
  });
}

Duplicata() {
  //exercicio 4
  List<int> duplicata = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5];
  List<int> semDuplicata = [];

  duplicata.forEach((e) {
    if (!semDuplicata.contains(e)) {
      //.contains verifica se a lista tem um determinado elemento
      semDuplicata.add(e);
    }
  });
  print("\nsemDuplicata: $semDuplicata");
}
/* EXPLICACAO 
Condicional if (!semDuplicatas.contains(numero)):
semDuplicatas.contains(numero): Este método verifica se o elemento atual (numero) 
já está presente na lista semDuplicatas.
O operador de negação (!) inverte o resultado do método contains. Assim, 
if (!semDuplicatas.contains(numero)) verifica se o elemento não está presente na lista 
semDuplicatas.
·  Adição de Elemento semDuplicatas.add(numero): Se o elemento atual não estiver presente na 
lista semDuplicatas, ele será adicionado. Isso garante que cada número só aparece uma vez na lista semDuplicatas.*/ 
