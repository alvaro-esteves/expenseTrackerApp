void semRetorno() {
  print('06.0) Funcoes sem retorno\n');

  conceito() {
    print('Funcao void sem retorno');
  }

  void somarValores(int valorA, int valorB) {
    //parametros da funcao dentro de parenteses
    var resultado = valorA + valorB;
    print('Soma: $valorA + $valorB = $resultado');
  }

  void verificarMaiorIdade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    print('$nome $resposta de idade!\n');
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i >= 0; i--) {
      print('Contagem: ${(i == 0) ? 'VAI!!!\n' : i}');
    }
    print('');
  }

  converterKmparaMilhas(dynamic array) {
    //fazendo verificacoes usando um forin loop
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}'); //usando stringAsFixed para que apenas duas casas decimais sejam apresentadas
    }
    print('Array convertido e arredondado!\n');
  }

  conceito();
  somarValores(2, 3); //parametros devem ser declarados aqui
  verificarMaiorIdade('Andre', 14);
  contagemRegressiva(3);
  converterKmparaMilhas([1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]);
}

comRetorno() {
  //------------------------------------------------------------------
  print('\n06.1) Funcoes com retorno\n');

  String conceito() {
    //funcao ira retornar uma string
    return 'Funcao com retorno String';
  }

  String somarValores(int valorA, int valorB) {
    //parametros da funcao dentro de parenteses
    var resultado = valorA + valorB;
    return 'Soma: $valorA + $valorB = $resultado\n';
  }

  String verificarMaiorIdade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    return '$nome $resposta de idade!\n';
  }

  String contagemRegressiva(int numero) {
    var resultado;
    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print('Contagem: $i') : resultado = 'CONTAGEM VAI!';
    }
    return resultado;
  }

  converterKmparaMilhas(dynamic array) {
    //nao e necessario escrever o tipo de retorno da funcao a nao ser que haja um retorno explicito
    //fazendo verificacoes usando um forin loop
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}'); //usando stringAsFixed para que apenas duas casas decimais sejam apresentadas
    }
    return 'Array convertido e arredondado!\n';
  }

  print(conceito());
  print(somarValores(1, 2));
  print(verificarMaiorIdade('Alvaro', 16));
  print(contagemRegressiva(0));
  print(converterKmparaMilhas([1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]));
}

void main() {
  semRetorno();
  comRetorno();
}
