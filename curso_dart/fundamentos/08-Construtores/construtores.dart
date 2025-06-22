//construtores devem ter sempre o mesmo nome que a classe
//construtores sao iniciados quando instanciamos as classes, podendo fazer configuracoes iniciais
import 'cObjeto.dart';
import 'cAnimal.dart';
import 'cPessoa.dart';
import 'cUsuario.dart';

void main() {
  print('08.0) Construtores\n');

  Objeto objeto = Objeto(/*aqui sao passados os parametros construtor*/);
  objeto.nome = 'mesa';
  print('nome: ${objeto.nome}\n');

  Animal animal = Animal('Chloe', 'Pug');
  print('nome: ${animal.nome} raca: ${animal.raca} idade: ${animal.idade}\n');

  Pessoa pessoa = Pessoa('Fernando', 36, cor: 'branca', altura: 1.83);
  print('nome: ${pessoa.nome} idade: ${pessoa.idade} cor: ${pessoa.cor} altura: ${pessoa.altura}\n');

  //dados inseridos pelo usuario
  Usuario usuario = Usuario('fmda@gmail', 'abc123', 25, nome: 'Alvaro', cargo: 'junior');
  print('Usuario: ${usuario.user} nome: ${usuario.nome}, senha: ***, idade: ${usuario.idade}, cargo: ${usuario.cargo}');
  usuario.autenticar();
  print('\n');

  //dados inseridos pelo admin
  Usuario admin = Usuario.admin('fmda@gmail', 'abc123', 25, nome: 'Alvaro');
  print('Usuario: ${admin.user} nome: ${admin.nome}, senha: ********, idade: ${admin.idade}, cargo: ${admin.cargo}');
  admin.autenticar();
}
