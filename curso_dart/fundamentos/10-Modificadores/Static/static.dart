/* 
Static - 1 regra: a variavel estatica fica disponivel na propria classe em vez de suas instancias/objetos
         2 regra: Em metodos estaticos deve usar variaveis estaticas da classe
         3 regra: Variaveis estaticas podes ser acessadas sem precisar instanciar classes ou objetos*/
import 'calculus.dart';

void main() {
  print('10.0) Modificadores Static\n');

  double raio = 5;
  var calculus1 = Calculus();
  print(calculus1.pi);
  print(Calculus.piStatic); //1 regra
  print(calculus1.areaCirculo(raio));

  print('');

  Calculus calculus2 = Calculus();
  print(calculus2.pi);
  print(calculus2.areaCirculo(raio));

  print('\nInstancias consomem ${identical(calculus1, calculus2) ? 'MENOS' : 'MAIS'} memoria!\n');
  //metodo e instancia comparados
  print(Calculus.piStatic);
  print(Calculus.piStatic * (raio * raio));
  print('Retornos iguais: ${Calculus.areaCirculoEstatico(raio) == Calculus().areaCirculo(raio) ? 'SIM' : 'NAO'} Metodos diferentes!');
}
