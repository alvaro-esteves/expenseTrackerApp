///2 - Principio do Aberto/fechado
///As classes tem que ser abertas para exyensao e fechadas para modificacao
///extensao (acrescentar novas funcionalidades)
///FORMA INCORRETA
///Classe fechada para modificacoes
/*
class Funcionario {
  void trabalhar() {
    print('zelador trabalhando');
  }
}

class Zelador extends Funcionario {}

class Porteiro extends Funcionario {}

void main() {
  final Zelador zelador = Zelador();
  zelador.trabalhar();

  final Porteiro porteiro = Porteiro();
  zelador.trabalhar();
}*/

///FORMA CORRETA
///Criamos uma classe abstrata para representar todos os tipos de funcionarios
///
abstract class Ifuncionario {
  final bool _registraPonto = true;
  void trabalhar();
}

//Na heranca voce pode reutilizar os valores herdados
class Porteiro extends Ifuncionario {
  @override
  void trabalhar() {
    print('porteiro trabalhando');
    print('porteiro ${!_registraPonto ? 'nao' : ''} registra ponto');
  }
}

//Na implementacao voce e obrigado a implementar tudo
class Zelador implements Ifuncionario {
  @override
  void trabalhar() {
    print('zelador trbalahando');
    print('zelador ${!_registraPonto ? 'nao' : ''} registra ponto');
  }

  @override
  final bool _registraPonto = false;
}

/// A classe de producao nao precisara mais de ser alterada caso precise
/// adicionar um novo tipo de funcionario

class Funcionario {
  void trabalhar(Ifuncionario funcionario) {
    funcionario.trabalhar();
  }
}

void main() {
  final Funcionario zelador = Funcionario();
  zelador.trabalhar(Zelador());

  final Funcionario porteiro = Funcionario();
  porteiro.trabalhar(Porteiro());
}
