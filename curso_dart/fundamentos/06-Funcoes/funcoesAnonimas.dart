funcoesAnonimas() {
  print('06.4.0) Funcoes Anonimas Conceito'); //funcoes anonimas nao tem nome
  //sao normalmente usadas como variavel

  print(''' SINTAXE
  (){
    print('Funcao Anonima!');
  }
  () => print('Funcao Anonima usando sintaxe Arrow!')
  ''');

  print('\n06.4.1) Funcoes Anonimas como Variaveis\n');

  var variavelAnonima = () => print('Variavel Anonima!');
  variavelAnonima();

  var variavelAnonimaParametro = (String msg) => print('Variavel Anonima $msg');
  variavelAnonimaParametro('com parametro!');

  print('\n06.4.1) Funcoes Anonimas como Parametros\n');

  void executarFuncao(Function funcao) => funcao();
  executarFuncao(() => print('Funcao Anonima passada como Parametro!'));
}

void main() {
  funcoesAnonimas();
}
