import 'conta.dart';

void main() {
  print('09.0) Encapsuladores\n');

  var conta = Conta(nome: 'alvaro', numeroConta: 100, contaTipo: ContaTipo.gold);
  conta.FazerUmaSuperOperacaoFoda();
}
