funcaoParametros() {
  print('06.3.1) Funcoes com parametros posicionados e default\n');
  //parametros posicionados ([]) podem ser nulo, mas caso um nao seja definido o outro tbm nao pode ser
  //a definicao dos parametros posicionados comeca do ultimo ao primeiro
  void exibirDados1(String nome, [int peso = 58, double altura = 1.92]) {
    print('Nome: $nome peso: $peso altura: $altura');
  }

  exibirDados1('Fernando');
  exibirDados1('Fernando', 67, 1.98);

  print('\n06.3.2) Funcoes com parametros nomeados e default\n');
  //parametros nomeados ({}) caso um nao seja definido o outro tbm nao pode ser
  //a definicao dos parametros nomeados tbm comeca do ultimo ao primeiro
  //para o uso dos parametros nomeados, o nome deles deve ser escrito e eles nao precisam estar em ordem
  //parametros nao podem ser nulos

  exibirDados2(String nome, {int peso = 65, double altura = 1.68}) {
    //parametros podem ser declarados fora de ordem
    print('Nome: $nome peso: $peso altura: $altura');
  }

  exibirDados2('Fernando');
  exibirDados2('Fernando', altura: 1.83, peso: 70);

  print('\n06.3.3) Funcoes como parametros para outras funcoes\n');

  void falar() {
    print('Essa e uma funcao passada como parametro nomeado!');
  }

  void saudacao(String nome, {required Function funcaoFalar}) {
    //required permite que a funcao seja void
    //required allows named parameters to be null
    print('Ola, eu sou $nome!');
    funcaoFalar();
  }

  saudacao('Fernando', funcaoFalar: falar);
  saudacao('Alvaro', funcaoFalar: () => print('Essa e uma funcao anonima passada como parametro nomeado')); //funcao anonima com funcao arrow como parametro
}

void main() {
  funcaoParametros();
}
