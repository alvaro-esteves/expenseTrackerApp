import 'dart:collection';

void main() {
  ///EXERCICIO 1: Crie um LinkedHashMap para armazenar nomes de cidades como chaves e suas populações como valores.
  /// Verifique se uma determinada cidade está no mapa e se um determinado valor de população existe no mapa.
  LinkedHashMap<String, int> cidades = LinkedHashMap();
  cidades['Sao Paulo'] = 12000000;
  cidades['Rio de Janeiro'] = 3000000;
  cidades['Curitiba'] = 1000000;
  print(cidades);

  //cidades.forEach((chave, valor) {//!FOR LOOPS NAO PERMITEM BREAK, USAR FOR IN LOOP
  for (var existe in cidades.entries) {
    bool cidadeExiste = false;
    bool populacaoExiste = false;
    if (cidades.containsKey('Sao Paulo') && cidades.containsValue(1000000)) {
      cidadeExiste = true;
      populacaoExiste = true;
      print('Sao Paulo existe? $cidadeExiste');
      print('A populacao de 1000000 existe? $populacaoExiste');
      break;
    }
  }
  ;

  ///EXERCICIO 2: Crie um LinkedHashMap para armazenar nomes de jogadores como chaves e suas pontuações como valores.
  ///Em seguida, converta o mapa em uma lista de pares chave-valor, ordene por pontuação em ordem decrescente e imprima o resultado.

  ///EXERCICIO 3: Crie dois LinkedHashMaps para armazenar informações sobre frutas e seus preços.
  ///Mescle os dois mapas em um único LinkedHashMap, priorizando os valores do segundo mapa em caso de chaves duplicadas.

  ///EXERCICIO 4: Descrição: Crie um LinkedHashMap para armazenar nomes de pessoas e suas idades.
  ///Filtre o mapa para conter apenas pessoas com idade acima de 18 anos e imprima o mapa resultante.
}
