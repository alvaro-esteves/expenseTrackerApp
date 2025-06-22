import 'mamiferos.dart';

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao.domestico(this.nome, this.raca, String sexo, {String idade = '3 anos', bool docil = true}) : super.placentarios(sexo, idade, docil: docil);
  Cao.selvagem(this.nome, this.raca, String sexo, {String idade = 'indefinida', bool docil = false}) : super.placentarios(sexo, idade, docil: docil);

  @override //sobrescreve o metodo da classe herdada (super)
  void dormir() {
    // se nao houver subscricao, o metodo da super class animal sera usado
    print('Dorme como um cao!');
  }

  @override
  void alimentar() {
    super.alimentar(); //implementa o escopo do metodo herdado (super)
    print('Se alimenta\ncomo um Cao');
  }

  @override
  void reproduzir() {
    print('Reproduz como um cao!');
  }

  void acao() {
    print('Late como um cao!');
  }
}
