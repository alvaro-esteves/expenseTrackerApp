/*quando declarar uma lista se o type nao for especificado <int> dart ira...
  especificar o type automaticamente baseado no tipo de variable, caso hajam...
  variables de diferentes tipos o type sera do tipo <Object>*/

//Main method with a parameter of type list string
void main(List<String> arguments) {
  List<int> myList = [1, 2, 3];
  final firstElement = myList[0]; //variavel que mostra o primeiro componente da lista
  print('Indice na posicao zero: $firstElement\n');

  var list = [1, 2, 3, 4, 5];
  list.add(6); //numero 6 sera adicionado depois do ultimo componente da lista
  print('Lista apos mudanca: $list');

  list.addAll([7, 8, 9]); //adiciona todos estes itens a lista
  print('List addAll: $list');

  list.insert(3, 11); //insere um numero logo apos o index escolhido
  print(list);

  list.replaceRange(0, 3, [11, 12, 13]); //index de inicio e index de fim, apos isso, numeros que irao substituir(end index nao incluso)
  print(list);

  list.remove(12); //selecionar o valor dentro da lista que sera substituido
}
