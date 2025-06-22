import 'dart:math';

/// CONCEITO:
/// - List e uma colecao dinamica e ordenada de elementos entre colchetes[]
/// - forEach: Aplica a funcao anonima a cada elemento da nossa colecao
/// - Todo Array e uma List

ListForEach() {
  print('16.1.0) List ForEach\n');

  var array = [0, 2.5, 7.25, 10];
  array.forEach((elemento) {
    print('Elementos na posicao: $elemento');
  }); //funcao anonima passada no forEach para que ele interaja com cada elemento dentro da lista

  ///SEM O FOR EACH PARA PRINTAR A POSICAO
  for (int i = 0; i < 4; i++) {
    var arrayOne = [0, 2.5, 7.25, 10];
    print('Array na posicao $i: ${array[i]}');
  }

  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> booleanas = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Tomates'];

  print('\nImplementacao: ${frutas.runtimeType}');
  //se o valor na lista de booleanas no indice 3 for verdadeiro a funcao anonima ira retornar 'verdadeiro'
  print('\nBooleanas[3]: ${(booleanas[inteiros.length]) ? 'verdadeiro' : 'false'}');

  frutas.insert(0, 'Abacaxi'); //insert requer o index seguido do elemento para inserir o elemento no indice determinado
  frutas.add('Laranja'); //.add adiciona o elemento ao final da lista
  frutas.forEach((e) => print('\nforEach: $e'));
  frutas.removeLast();
  frutas.removeWhere((e) => e == 'Banana');
  print(frutas);
  print(frutas.elementAt(2));
  print(frutas.contains('abacaxi')); //camelcase, case sensitive

  List<num> numeros = List.from(inteiros)
    ..addAll(doubles)
    ..shuffle()
    ..sort(); //comando que orden a lista em ordem crescente
  //primeiro add todos os caracteres das listas inteiros e doubles para a lista numeros(from e addAll), e depois baralhamos (shuffle)
  print(numeros);

  List<num> lista;
  lista = numeros.take(3).skip(1).toList(); //take(30) - takes the first 3 elements and toList is needed to allow the methods to work
  //skip(1) pula o primeiro elemento na lista
  print(lista);

  //geradores de lista
  List<String> listaPreenchida = List.filled(2, 'elemento'); //.filled(length, fill) - numero de elementos e o elemento em si
  List<String> listaGerada = List.generate(2, (index) => 'index: $index'); //.generate(length, (index) => null)
  List<double> listaPrecos = List.generate(5, (index) => double.parse(((index + 1) * Random().nextDouble()).toStringAsFixed(2)));
  //lista de numeros com virgula gerada de forma randomica com 2 casas decimais
  //1 - index * Random().nextDouble() - GERANDO NUMEROS ALEATORIOS DOUBLE
  //2 - (index + 1) * Random().nextDouble()); - REMOVENDO O ZERO NO COMECO DOS NUMEROS
  //3 - ((index + 1) * Random().nextDouble()).toStringAsFixed(2)) - DIMINUIR AS CASAS DECIMAIS
  //4 - UTILIZANDO ESSA FUNCAO OS NUMEROS GERADOS SE TORNAM UMA STRING, COMO CONSERTAR:
  // double.parse(((index + 1) * Random().nextDouble()).toStringAsFixed(2)))
  print('ListaPreenchida: $listaPreenchida \nListaGerada: $listaGerada \nListaPrecos: $listaPrecos');
  listaPrecos.forEach((element) => print('elemento: $element'));
}

ListExpand() {
  print('\n\n16.1.1 - List Expand)');

  var lista = [
    [1, 2],
    [3, 4]
  ];

  List<dynamic> listaFlat = lista.expand((e) => e).toList();
  //elementos divididos e integrados na lista nova
  List<dynamic> listaDuplicada = listaFlat.expand((e) => [e, e]).toList();
  //duplicando a lista
  print('ListaFlat: $listaFlat/n Lista Duplicada: $listaDuplicada');

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];

  List<dynamic>? listaDinamica;
  print('$listaDinamica');
  print(listaDinamica = [1, 5, 10] + [2, 7]); //concatenacao e nao soma
  print(listaDinamica = []
    ..addAll(inteiros)
    ..addAll(doubles));

  print(listaDinamica = [0, ...inteiros, 15]); //operador spread
  //print(listaDinamica = [...[], ...inteiros, if (doubles is List<doubles>) ...doubles]);//se doubles for igual a lista doubles
  print(listaDinamica = [...[], for (var numero in numeros) numero]); //cada elemento da lista numeros e add na lista dinamica
}

///
///MAP
///- Transforma/seleciona os elementos de uma colecao criando uma nova do mesmo tamanho!
ListMap() {
  print('\n16.1.2) List Map\n');

  List<String> frutas = ['Morango', 'Banana', 'Tomate'];
  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta!').toList(); //sempre usar .toList()
  print(frutasMapeadas);

  List<int> inteiros = [1, 5, 10];
  var incrementar = (int e) => ++e; //elemento deve ser incrementado antes da definicao
  final dobro = (int e) => e * 2; //quando ha operacoes a serem feitas e a lista e do tipo int, os elementos devem ser int tbm (int e)
  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeados);

  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (e) => e * 3;
  final dynamic Function(dynamic) moeda = (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';
  //mapeando e convertendo os elementos para elementos semelhantes ao real
  dynamic Function(dynamic) porcentagem(double desconto) => (valor) => desconto * valor; //closure
  List<dynamic> doublesMapeados = doubles.map(triplo).map(porcentagem(0.9)).map(moeda).toList();
  print(doublesMapeados);
}

///
///* Every
///- Faz o teste em todos elementos com o operador logico '&&' retornando (true ou false)
///

ListEvery() {
  print('\n16.1.3) List Every\n');

  List<int> inteiros = [0, 1, 2, 3, 4, 5];
  bool resultado = inteiros.every((e) => e > 0);
  print(resultado);
  List<String> textos = List.from(['Fernando', 'Leila', 'chloe']);
  resultado = textos.every((e) => e.contains('e'));
  print(resultado);
}

///
///* Where:
///- Filtra os elementos da colecao criando uma nova do mesmo tamanho ou menor
///

ListWhere() {
  print('\n16.1.4) List Where\n');

  List<int> idades = [36, 12, 18, 31, 17, 23];
  print(idades.where((e) => e is int));
  print(idades.whereType<int>()); //mesma funcao que a linha anterior
  List<int> adultos = idades.where((int e) => e > 17).toList();
  var crianca = idades.singleWhere((int e) => e < 12, orElse: () => 0);
  //orElse permite que as condicoes/filtros sejam sempre satisfeitas, mesmo que o retorno seja apenas nulo
  int? menor = idades.lastWhere((e) => e.toString().startsWith('8'), orElse: () => 0);
  //verificar se o elemento incia com o digito 1
  //elemento precisa ser convertido para string primeiro - firstWhere funciona ao contrario
  //o orElse deve ser sempre int porque a var e int
  print('adultos: $adultos, menor: $menor, crianca: $crianca');
}

///
///*REDUCE
///- Compara os elementos da colecao retornando um unico elemento resultante
///- Ao interagir com os elementos o indice 0 se torna o anterior, indice 1 se torna o atual
///

ListReduce() {
  print('\n16.1.5) List Reduce\n');

  List<int> numerosPares = List.generate(6, (e) => e * 2); //.generate(length, (index)) GERANDO A LISTA DE FORMA DINAMICA
  print(numerosPares);
  int resultado = numerosPares.reduce((anterior, atual) {
    //explicacao:
    print('$anterior + $atual');
    return anterior + atual;
  });
  //.reduce(recebe dois elementos que sempre serao o anterior e o atual)
  //O RETORNO PODE SER IMPLICITO OU UM EXPRESSAO
  print('Resultado: $resultado'); // o retorno sera o proximo anterior

  List<bool> booleanas = [true, false, !true, !false];
  bool and = booleanas.reduce((anterior, atual) => anterior && atual);
  bool or = booleanas.reduce((anterior, atual) => anterior || atual);
  print('And: $and'); // a cada interacao os dois elementos deveriam ser true para poder retornar um true
  print('Or: $or\n'); // a cada interacao apenas um elemento precisa ser true

  List<int> idades = [36, 12, 18, 31, 17, 23];
  int maisNovo = idades.reduce((anterior, atual) => (anterior > atual) ? atual : anterior);
  int maisVelho = idades.reduce((anterior, atual) => (anterior < atual) ? atual : anterior);
  int media = idades.reduce((anterior, atual) => anterior + atual);
  //nao da pra fazer o calculo completo da media aqui pq o retorno deve ser int e nao double
  print('Mais Novo: $maisNovo, Mais Velho: $maisVelho' ' Media: ${(media / idades.length).toStringAsFixed(1)}');
  //operacao da media concluida aqui
}

///
///*FOLD
///- Compara os elementos da colecao reotornando 1 unico elemento resultante
///- O valor inicial se torna o anterior e o indice 0 se torna o atual.
///

ListFold() {
  print('\n16.1.6) List Fold\n');

  List<int> numerosPares = List.generate(6, (e) => e * 2);
  print(numerosPares);
  int valorInicial = 10;
  int resultado = numerosPares.fold(valorInicial, (anterior, atual) {
    print('$anterior + $atual');
    return anterior + atual;
  });
  print('$resultado\n');

  int valorInicial2 = 30;
  int resultado2 = numerosPares.fold(valorInicial2, (anterior, atual) {
    print('$anterior - $atual');
    return anterior - atual;
  });
  print(resultado2);
}

main() {
  ListForEach();
  ListExpand();
  ListMap();
  ListEvery();
  ListWhere();
  ListReduce();
  ListFold();
}
