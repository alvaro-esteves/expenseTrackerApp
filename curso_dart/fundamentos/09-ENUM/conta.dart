enum ContaTipo { gold, plusGold, black }

class Conta {
  final bool alterarLimite = false;

  final int? numeroConta;
  final String nome;
  final double saldo = 0;
  final double limite = 500;
  final ContaTipo contaTipo;

  Conta({this.numeroConta, required this.nome, required this.contaTipo});

  void FazerUmaSuperOperacaoFoda() {
    switch (contaTipo) {
      case ContaTipo.gold:
        print('vc e pobre n da');
      case ContaTipo.plusGold:
        print('so da 1 vez n enche dnv');
      case ContaTipo.black:
        print('Voce e rico obg dnv');
    }
  }
}
