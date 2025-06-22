import 'cPessoa.dart';
import 'cUsuario.dart';
import 'cConta.dart';

///
///Classes => Objetos
///Variaveis => atributos
///Funcoes => metodos
///
void main() {
  //instanciando a classe criada: para poder usar os atributos da mesma
  print('07.0) Classes/Objetos\n');

  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = 'Fernando';
  pessoa1.idade = 36;
  print('Nome: ${pessoa1.nome} idade: ${pessoa1.idade}');

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Leila';
  pessoa2.idade = 31;
  print('Nome: ${pessoa2.nome} idade: ${pessoa2.idade}');

  //OPERADOR EM CASCATA PARA INUMERAS CHAMADAS POR MEIO DE UM OBJETO
  var pessoa3 = Pessoa();
  pessoa3
    ..nome = 'Alvaro'
    ..idade = 26
    ..info();

  //Dados inseridos pelo Usuario
  Usuario usuario = Usuario();
  usuario.usuario = 'fma@gmail';
  usuario.senha = '12345';
  usuario.autenticar();

  ContaC conta = ContaC();
  print('Conta: ${conta.nome} N.conta: ${conta.numeroConta} Saldo: ${conta.consultarSaldo()}');
  conta.calcularSalario(950, 150, 2);
  conta.depositar(150);
  conta.sacar(50);
}
