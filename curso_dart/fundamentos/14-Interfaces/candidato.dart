import 'postagem.dart';
import 'cidadao.dart';
import 'presidenciavel.dart';

class Candidato extends Cidadao implements Postagem, Presidenciavel {
  //implementando uma interface obrigatoriamente temos que subscrever os att. e os metodos
  String? objetivo;

  Candidato(String nome, {this.ideologia, this.partido}) : super(nome) {
    diretosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  //INTERFACES
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
}
