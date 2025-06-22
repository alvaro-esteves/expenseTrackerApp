// CONCEITO
// - IN DART YOU CAN'T EXTEND MORE THAN ONE CLASS, TO DO THAT YOU NEED A MIXIN CLASS
// - Mixin permite implementar metodos e atributos de outras classes

// REGRAS
// - Devem ser implementados antes das interfaces
// - Podem ser implementados a partir de uma classe concreta ou abstrata
// - Nao pode implementar uma classe que extenda e extender uma classe mixin
// - Pode implementar mais de um Mixin, e nao e orbigatorio usar todos os metodos e atributos
// - As classes que possuem metodos iguais serao sobrescritas em ordem ate a classe herdeira

// ON
// - E obrigatorio declarar a sua classe como Mixin
// - Restringe o uso do Mixin as classes que extendem ou implementam a classe herdada.

// CLASSE ABSTRATA
abstract class Cidadao {
  String? nome;

  Cidadao(this.nome);

  void objetivosPessoais();

  void diretosDeveres() {
    print('Todo cidadao tem direitos e deveres');
  }
}

// INTERFACES
abstract class Presidenciavel {
  String? partido;
  String? ideologia;

  void ideologiaPolitica();
}

class Postagem {
  String? postagem;

  void escreverPostagem() {
    print('');
  }
}

// MIXINS
mixin Elegivel on Cidadao {
  /*Without on: The mixin can be applied to any class.
    With on: The mixin can only be applied to classes that extend or implement the specified class (in this case, Cidadao).*/
  bool elegivel = false;
  void prestacaoContas();
}

mixin Conta {
  double _saldo = 0;
  double salario = 33000;

  double getSaldo() {
    return _saldo;
  }

  void depositar(double valor) {
    _saldo = valor;
  }

  bool declaracaoRenda() => _saldo / 12 < salario;
}

// CLASSE CONCRETA
class Candidato extends Cidadao with Elegivel, Conta implements Postagem, Presidenciavel {
  // implementando uma interface obrigatoriamente temos que subscrever os att. e os metodos
  String? objetivo;

  Candidato(String nome, {this.ideologia, this.partido}) : super(nome) {
    diretosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // INTERFACES
  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no Facebook: $postagem');
  }

  @override
  String? ideologia;
  String? partido;

  @override
  void ideologiaPolitica() {
    print('$nome e candidato com ideologia de $ideologia pelo partido $partido');
  }

  // MIXINS
  @override
  void prestacaoContas() {
    elegivel = super.declaracaoRenda();
    if (elegivel) {
      print('Candidato $nome passou na prestacao de contas');
    } else {
      print('Candidato $nome foi barrado na prestacao de contas');
    }
  }
}

void main() {
  print('15.0) Mixin\n');

  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');
  bolsonaro
    ..objetivo = 'Ganhar eleicao'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupcao'
    ..escreverPostagem()
    ..ideologiaPolitica()
    ..depositar(33699) //depositar e um metodo e nao mais uma var
    ..prestacaoContas();
}
//se depositar fosse var seria depositar = 33699