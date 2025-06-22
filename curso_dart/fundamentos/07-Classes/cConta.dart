import 'dart:math';

class ContaC {
  String nome = 'Fernando';
  int numeroConta = Random().nextInt(10000 + 1); //sem o + 1 o numero aleatorio pararia no 9999
  double saldo = 0;

  double consultarSaldo() => this.saldo; //this always refers to the class' parameters

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;

  void calcularSalario(double salario, double bonus, int faltas) {
    var salarioCalculado = this.saldo = (salario * desconto(faltas)) + bonus;
    print('Salario: $salarioCalculado Bonus: $bonus Faltas: $faltas');
  }

  void depositar(double valorDeposito) {
    //this.saldo += valorDeposito;
    this.saldo = this.saldo + valorDeposito;
    print('Deposito: $valorDeposito Saldo: $saldo');
  }

  void sacar(double valorSaque) {
    this.saldo = this.saldo - valorSaque;
    print('Saque: $valorSaque Saldo: $saldo');
  }
}
