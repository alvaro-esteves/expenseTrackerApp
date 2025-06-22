void main() {
  print('05.1) Loops For');

  for (int i = 1; i <= 3; i++) {
    print('Contagem: $i');
  }
  print('');

  for (int i = 15; i >= 0; i -= 5) {
    // -= reduz de 5 em 5 e += aumentaria i de 5 em 5
    print('Regressiva: $i');
  }
  print('');

  String nome = 'Leila';
  int numero = 0;
  for (int i = numero; i < nome.length; i++) {
    /*if (i % 2 == 0) {
      print('$i é par');
    } else {
      print('$i e impar');
    }
  }*/
    print('$i ${(i % 2 == 0) ? 'é par' : 'é impar'}'); //mesmo resultado que o if
  }
  print('');

  for (var i = 0; i < nome.length; i++) {
    print('${nome.substring(i, i + 1)}');
  }
  print('');

  //quais os multiplos de 2 e 3 no intervalo de 5 a 12!
  for (int i = 5; i <= 12; i++) {
    if (i == 0) {
      print('$i é multiplo de   todos os numeros');
    } else if (i % 2 == 0 && i % 3 == 0) {
      print('$i é multiplo de 2 e 3');
    } else if (i % 3 == 0) {
      print('$i é multiplo de 3');
    } else if (i % 2 == 0) {
      print('$i é multiplo de 2');
    } else {
      print('$i nao é multiplo de nenhum dos numeros');
    }
  }
  print('');

  dynamic frutas = ['tomate', 'manga', 'pera', 'maca'];
  for (int i = 0; i < frutas.length; i++) {
    print('for: $i ${frutas[1]}');
  }
  print('');
  //O for in é utilizado para percorrer listas
  for (var fruta in frutas) {
    print('for in: $fruta');
  }
}
