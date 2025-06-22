///
///*Set e uma colecao de elementos UNICOS e ordenados ENTRE CHAVES {}. Nao tem acesso a INDICE!
///

import 'dart:collection';

linkedHashSet() {
  print('16.2.0) LinkedHashSet == Set \n');

  Set<int> setInt = Set();
  print('Implementacao: ${setInt.runtimeType}'); //_CompactLinkedHashSet<int>
  //?setInt[0] = 0; //nao tem acesso a indice
  setInt.add(13);
  setInt.add(13);
  setInt.add(17);
  setInt.add(17);
  setInt.remove(13);
  print(setInt); //sempre representada por chaves
  print('');
  for (var i = 0; i < setInt.length; i++) {
    //print(setInt[i]); //!nao tem acesso a indice mas pode usar elementAt
    print('For: ${setInt.elementAt(i)}\n');
  }

  for (var elemento in setInt) {
    print('for in: ${elemento}\n');
  }
  setInt.forEach((e) => print('forEach: $e\n'));

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};
  print('Difference: ${listaA.difference(listaB)}\n');
  print('Union: ${listaA.union(listaB)}\n'); //nunca mostra as repeticoes
  print('Intersection: ${listaA.intersection(listaB)}\n');
  print('LookUp: ${listaB.lookup(7)}\n'); //se nao conter o elemento ira dar erro
}

///
///HashSet e uma colecao de elementos UNICOS e DESORDENADOS
///

hashSet() {
  print('\n16.2.1) HashSet\n');

  HashSet<String> hashSet1 = HashSet(); //import 'dart:collection';
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();

  print('Implementacao: ${hashSet1.runtimeType}\n'); //_HashSet<String>
  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('C');
  hashSet1.add('D');
  hashSet2.add(1); //lista fica ordenada com elementos indice de 1 casa decimal
  hashSet2.add(2);
  hashSet2.add(3);
  hashSet3.add(11);
  hashSet3.add(22);
  hashSet3.add(33);
  print('${hashSet1} \n ${hashSet2} \n ${hashSet3}\n');

  for (var i = 0; i < hashSet1.length; i++) {
    //print(hashSet1[i]); //!nao tem acesso ao indice mas pode usar elementAt
    print('For: ${hashSet1.elementAt(i)}');
  }
  print('');
  for (var elemento in hashSet2) {
    print('ForIn Hashset2: $elemento');
  }
  print('');
  hashSet3.forEach((e) => print('forEach hashSet3: $e'));
}

///
///*SplayTreeSet organiza automaticamenteos elementos em ordem crescente
///*Por ser uma arvore de comparacoes nao pode conter elementos null
//

splayTreeSet() {
  print('\n16.2.3) SplayTreeSet\n');

  SplayTreeSet<String> splayTreeSet = SplayTreeSet(); //import 'dart: collection';
  print('Implementcao: ${splayTreeSet.runtimeType}'); //SplayTreeSet<String>
  splayTreeSet.add('info1');
  splayTreeSet.add('info2');
  splayTreeSet.add('info3');
  splayTreeSet.add('info4');
  //splayTreeSet.add(null); //!NAO PODE CONTER NULL
  print(splayTreeSet);
  print('');
  for (var i = 0; i < splayTreeSet.length; i++) {
    //print(splayTreeSet[i]); nao tem acesso a indice mas pode usar elementAt
    print('For: ${splayTreeSet.elementAt(i)}');
  }
  print('');
  for (var elemento in splayTreeSet) {
    print('ForIn: ${elemento}');
  }
  print('');
  splayTreeSet.forEach((element) => print('ForEach: ${element}'));
}

//!CONVERTENDO UMA LISTA NORMAL PARA SET (DE FORMA A EVITAR REPETICOES)
class Data {
  int? dia;
  int? mes;
  int? ano;

  Data({this.dia, this.mes, this.ano});

  //!USANDO APENAS O METODO TOSET() NAO SERA SUFICIENTE
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Data && other.dia == dia && other.mes == mes && other.ano == ano;
  }

  @override
  int get hashCode => dia.hashCode ^ mes.hashCode ^ ano.hashCode;
}

main() {
  linkedHashSet();
  hashSet();
  splayTreeSet();

  //!CONVERTENDO UMA LISTA NORMAL PARA SET (DE FORMA A EVITAR REPETICOES)
  List<Data> dates = [
    Data(dia: 1, mes: 04, ano: 1998),
    Data(dia: 1, mes: 04, ano: 1998),
    Data(dia: 2, mes: 05, ano: 1999),
    Data(dia: 2, mes: 05, ano: 1999),
    Data(dia: 3, mes: 06, ano: 2000),
    Data(dia: 3, mes: 06, ano: 2000),
  ];
  print('');
  dates.forEach((e) => print('Lista Dates: ${e.dia}, ${e.mes}, ${e.ano}'));

  Set<Data> dataFiltrada = dates.toSet();

  print('');
  for (int i = 0; i < dataFiltrada.length; i++) {
    print('Lista Data Filtrada: ${dataFiltrada.elementAt(i).dia}, ${dataFiltrada.elementAt(i).mes}, ${dataFiltrada.elementAt(i).ano}');
  }
}
