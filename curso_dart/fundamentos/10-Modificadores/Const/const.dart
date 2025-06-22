/*
 CONST 
 - Inicializada em tempo de compilacao, deve ser declarada com valor constante
 - Ao nivel de classes deve ser statica para ficar disponivel na classe
 - Em colecoes const todo conteudo deve ser constante 
 OBJETO IMUTAVEL
 - O construtor deve ser constante 
 - As variaveis devem ser final ou static const
  */
import 'brasil.dart';

void main() {
  print('01.2) Modificadores Const\n');

  const pi = 3.14; //assim como uma var final o valor de uma const nao pode ser alterado
  double raio = 2;
  var resultado = pi * (raio * raio);
  print('$resultado\n');

  final numeros = [raio, 2.5];
  numeros.add(resultado);
  print(numeros); //arrays final podem ser alterados

  final listaFinal = const [0, 1];
  //listaFinal.add(2); const lists nao podem ter valores add
  print(listaFinal);

  const listaConst = [1, 2, pi]; //so pode ter valores constantes, raio por ser double nao pode ser add
  //listaConst.add(pi); mesmo pi sendo constante ele nao pode ser add pq a lista constante nao permite
  print('$listaConst\n');

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const constante = 1;
    print('contagem: ${constante + indiceFinal}');
  }

  var pais = Brasil(-15.792371, -47.882326);
  print('\nobjeto: $pais capital: ${Brasil.capital} latiude: ${pais.latitude} longitude: ${pais.longitude}');
  print('Estados: ${Brasil.estados}');
}
