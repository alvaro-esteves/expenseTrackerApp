/*
Metodos (override/sobreposicao != overload/sobrecarga)
 - Override: Temos sobrescrita dos metodos da classe pai na classe herdeira 

 Construtores 
 - Super se refere ao construtor da classe herdeira

 Classes abstratas 
 - Nao podem ser instanciadas servem como modelo
 - Metodos sem escopo devem ser sobrescritos nas classes herdeiras!
*/

import 'cao.dart';

void main() {
  print('13.0) Sobrescritas de Metodos, Atributos e Construtores\n');
  //nao posso instanciar a classe animal direto por ser modelo (ABSTRACT)

  var cao = Cao.domestico('Ted', 'Pitbull', 'Macho');
  print('nome: ${cao.nome} raca: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${cao.docil}');
  print('desenvolvimento: ${cao.desenvolvimento} tipo: ${cao.coluna ? 'Vertebrado' : 'Invertebrado'}');
  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();
  print('O ${cao.nome} morde? ${(cao.docil ? 'Nao morde' : 'Sim, ele morde')}');
}
