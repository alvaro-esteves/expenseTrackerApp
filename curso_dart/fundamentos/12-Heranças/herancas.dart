/*REGRAS
 - Uma classe pode ter somente uma heranca.

 CONSTRUTORES
 - Devem obedecer a ordem dos parametros
 - Parametros default devem ser nomeados ou posicionados
 - Tratamento e tipagem de parametros deve ser feito na classe herdeira!
 */
import 'cao.dart';

void main() {
  print('12.0) Herancas de atributos metodos e construtores\n');

  var cao = Cao('Chloe', 'Pug', 'Femea');
  print('nome: ${cao.nome} raca: ${cao.raca} sexo: ${cao.idade} docil: ${cao.docil}');
  cao
    ..dormir()
    ..comer()
    ..acao();
  print('${cao.nome} ${cao.docil ? 'esta amigavel' : 'nao esta amigavel'}');
}
