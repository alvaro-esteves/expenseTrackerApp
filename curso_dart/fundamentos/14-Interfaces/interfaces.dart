/*
CONCEITO
- Interfaces sao modelos para implementar metodos e atributos em nossas classes

REGRAS 
- Ao implementar uma interface devemos utilizar todos os metodos e atributos 
- No dart nao tem sintaxe para interfaces, pode ser um classe concreta ou abstrata!
- Pode implementar mais de uma interface e deve sobrescrever todos metodos e atributos!
*/
import 'candidato.dart';

void main() {
  print('15.0) Interfaces\n');

  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');
  bolsonaro
    ..objetivo = 'Ganhar eleicao'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupcao'
    ..escreverPostagem()
    ..ideologiaPolitica();
}
