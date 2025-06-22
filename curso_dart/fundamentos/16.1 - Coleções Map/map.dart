///
///? MAP: transforma/seleciona os elementos de uma colecao
///? criando uma nova do mesmo tamanho.
void main() {
  mapMap();
}

mapMap() {
  print('16.4.1) Map map\n');

  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preco': 3.45},
    {'nome': 'Caderno', 'preco': 13.9},
    {'nome': 'Kitlapis', 'preco': 3.45},
    {'nome': 'Caneta', 'preco': 3.45},
  ];
//*Manipulando a lista com uma CLOSURE
  Function(Map<String, dynamic>) porcentagem(double desconto) {
    return (Map<String, dynamic> valor) {
      return valor['preco'] * desconto;
    };
  }

//*variavel recebendo uma funcao anonima que altera um elemento retornando uma string
  String moeda(double e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';

  List<String> precos1 = carrinho.map(porcentagem(0.9)).map((e) => moeda(e as double)).toList();

  ///Conversão explícita no map: A linha .map((e) => moeda(e as double)) garante que o valor
  ///passado para a função moeda é explicitamente convertido para double. Como o primeiro map
  ///retorna um valor dynamic, o uso de as double assegura que o tipo correto seja passado para moeda.
  ///Conversão para List<String>: A função moeda já retorna String, então a conversão toList()
  ///resultará em uma lista de strings (List<String>), evitando o erro.

  //?Obtendo o mesmo resultado sem a funcao closure usando a funcao UPDATE
  List<String> precos2 = carrinho.map((e) => e.update('preco', (e) => e * 0.9)).map((e) => moeda(e as double)).toList();

  //?Mapeando todas as chaves da lista de map que possuem os valores dos precos
  //!Para aplicar a funcao reduce precoMedio nao pode ser VAR mas sim DOUBLE

  //*var precoMedio = carrinho.map((e) => e['preco']).toList();

  String precoMedio = (carrinho.map((e) => e['preco']).reduce((anterior, atual) => anterior + atual) / carrinho.length).toStringAsFixed(2); //calculo da media de precos
  //*quando fizer somente o calculo e o display da expressao "double precoMedio"
  //*para fazer o display da expressao com duas casas decimais apenas "String precoMedio"

  print('Precos 1: $precos1\nPrecos 2: $precos2\nPreco Medio: $precoMedio\n');

  ///precoMedio: Extrai os preços originais de carrinho, sem modificá-los.
  ///precos2: Modifica os preços originais de carrinho permanentemente com o update e depois formata esses preços para strings.
  ///precos1: Calcula o desconto temporariamente sem modificar os preços originais e formata o resultado.

  List<Map<String, Object>> escola = [
    {
      'nome': 'Turma T1',
      'alunos': [
        {'nome': 'Fernando', 'nota': 8.1},
        {'nome': 'Leila', 'nota': 9.2}
      ]
    },
    {
      'nome': 'Turma T2',
      'alunos': [
        {'nome': 'Chloe', 'nota': 8.9},
        {'nome': 'Bartolomeu', 'nota': 7.3}
      ]
    },
  ];

  //Primeiro mapeia os alunos de cada turma e depois extrai as notas
  var alunosEscola = escola
      .map((e) => e['alunos'] as List<Map<String, Object>>?) // Primeiro mapeia 'alunos' e trata a possibilidade de ser nulo
      .where((alunos) => alunos != null) // Remove os valores nulos (se houver)
      .expand((alunos) => alunos!) // Expande as listas de alunos em uma única lista de iterables
      .map((aluno) => aluno['nota'] as double?) // Acessa a nota de cada aluno
      .where((nota) => nota != null) // Remove notas nulas
      .toList();

  print('Lista ordenada:$alunosEscola');

  alunosEscola.sort((b, a) {
    // Cast explícito para garantir que 'a' e 'b' sejam tratados como Map
    //ERRADO: alunosEscola.sort((b, a) => a['nota'].compareTo(b['nota']));
    double notaA = (a as Map<String, Object>)['nota'] as double? ?? 0.0;
    double notaB = (b as Map<String, Object>)['nota'] as double? ?? 0.0;
    return notaA.compareTo(notaB);
  });

  print('Lista ordenada: $alunosEscola');
  //!PARAR AQUI
}
