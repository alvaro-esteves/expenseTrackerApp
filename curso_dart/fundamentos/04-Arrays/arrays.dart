///arrays podem ser dinamicos

void main() {
  print('04.0) Arrays\n');

  var textos = ['Fernando', 'Leticia'];
  var numeros = [1, 2.5, 5, 31, 36];
  var condicoes = [!false, true, false, null];
  print('${textos[0]} e ${textos[1]}');
  print('${textos[0]} tem ${numeros[4]} anos');
  print('${textos[1]} ${numeros[3] > 17 ? 'e maior' : 'nao e maior'} de idade');
  //print('condicoes[3] == null: ${condicoes[3] ?? (condicoes[0] ? condicoes[1] : condicoes[2])}');

  bool verdadeiro = !false;
  var arrayDinamico = ['texto', [], 3, 1.5, verdadeiro];
  print(arrayDinamico);
  arrayDinamico[0] = textos[0];
  arrayDinamico[1] = ['Martins', 'de', 'Andrade'];
  arrayDinamico[2] = numeros[2];
  arrayDinamico[3] = numeros[1];
  arrayDinamico[4] = !verdadeiro;
  print(arrayDinamico);

  print('\n04.1) Arrays Funcoes\n');
  arrayDinamico.add(numeros[4]); //add membros no final do array
  arrayDinamico.insert(0, 'Leila'); //add membros numa posicao especifica do array
  print(arrayDinamico);
  arrayDinamico.removeAt(1); //remove um indice em especifico
  print(arrayDinamico); //Fernando removido
  arrayDinamico.removeRange(1, 4); //removendo sequencia de indices num determinado intervalo
  arrayDinamico.remove('Leila');
  arrayDinamico.removeWhere((element) => element == 'Leticia');
  print(arrayDinamico);
  print(arrayDinamico.length); //mostra o numero de elementos que o array possui

  arrayDinamico.clear(); //remove todos os itens de dentro do array
  print('$arrayDinamico == null: $arrayDinamico == null');
  print('$arrayDinamico == empty: ${arrayDinamico.isEmpty}'); //vazio nao e igual a null
  //arrayDinamico.length = 1; //inserindo o numero 1, arrayDinamico tem um elemento nulo
  //print('$arrayDinamico ?? ${arrayDinamico.contains(null)}');

  numeros = [10, 5, 1, 2.25, 7.5];
  numeros.sort(); //organiza os elementos do array em forma crescente
  print(numeros);
  textos = ['Fernando', 'Leila', 'Bartolomeu'];
  textos.sort((a, b) => a.compareTo(b)); //basta inverter ordem a b para obter uma lista crescente!
  print(textos);
}
