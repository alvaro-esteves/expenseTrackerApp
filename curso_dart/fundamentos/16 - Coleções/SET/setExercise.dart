import 'dart:collection';

void main() {
  //?EXERCISE 1
  List<int> numeros = [1, 2, 3, 2, 4, 4, 5];
  print(numeros);

  Set<int> numerosSet = numeros.toSet();
  print(numerosSet);
  //?EXERCISE 1

  print('');

  //*EXERCISE 2
  List<String> lista1 = ['apple', 'banana', 'orange'];
  List<String> lista2 = ['banana', 'grape', 'apple', 'melon'];

  lista1.addAll(lista2);

  Set<String> lista1Set = lista1.toSet();
  print(lista1Set);
  //*EXERCISE 2

  print('');

  //TODO EXERCISE 3
  List<int> lista3 = [1, 2, 3, 4];
  List<int> lista4 = [3, 4, 5, 6];

  Set<int> lista3Set = lista3.toSet();
  Set<int> lista4Set = lista4.toSet();
  print('Intersection: ${lista3Set.intersection(lista4Set)}');
  //TODO EXERCISE 3

  print('');

  //!EXERCISE 6

  List<String> frutas = ['banana', 'apple', 'orange'];
  String frutaProcurada = 'apple';

  Set<String> frutasSet = frutas.toSet();

  for (int i = 0; i < frutasSet.length; i++) {
    bool achei = false;
    if (frutasSet.elementAt(i) == frutaProcurada) {
      achei = true;
      print(achei);
      break;
    }
  }

  //!EXERCISE 6
  print('');

  //?EXERCISE 7 Dada uma lista de números com possíveis duplicatas,
  //?converta-a para um Set<int>, remova as duplicatas e
  //?depois converta de volta para uma lista ordenada.

  List<int> numeros1 = [5, 3, 8, 5, 2, 8, 1];
  numeros1.sort((a, b) => a.compareTo(b));
  Set<int> numerosSet1 = numeros1.toSet();
  print(numerosSet1);

  List<int> numerosBack = numerosSet1.toList();
  print(numerosBack);

  //?EXERCISE 7
}
