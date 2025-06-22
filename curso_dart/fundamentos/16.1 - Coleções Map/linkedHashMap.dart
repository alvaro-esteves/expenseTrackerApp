///
///*CONCEITO
///*- Map e uma colecao dinamica e customizavel de chaves e valores entre{}. As chaves sao unicas, e os valores nao se repetem
///

linkedHashMap() {
  print('16.4.0) linkedHashMap == Map\n');

  List<String> nomes = ['Fernando', 'Leila'];
  //!SINTAXE DO MAP: duas tipagens, uma para as chaves e a outra para os valores <int, dynamic>
  Map<int, dynamic> nomesMap = nomes.asMap(); //*converte a lista para um map
  print('\n$nomesMap');

  ///!EXPLICANDO O PRINT {0: Fernando, 1: Leila}
  ///!os indices da lista string que eram 0 e 1 agora sao chaves do tipo int
  ///!e os elementos Fernando e Leila que eram valores String
  ///!agora sao valores com a tipagem dinamica, mas tbm podem ser String

  nomesMap.forEach((chave, valor) => print('$chave: $valor'));
  //?em listas normais se manipula apenas o elemento: nomes.forEach((e) => e)
  //? em mapas se manipula a chave e o valor (key, value)

  Map<String, dynamic> frutas = Map();
  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde';
  //?as chaves sao unicas entao add um novo valor a chave sera atualizada apenas
  frutas['goiaba'] = 'amarela';
  frutas['maca'] = 'vermelha';
  print(frutas);

  print(frutas.containsKey('banana'));
  print(frutas.containsValue('azul'));
  print(frutas['banana']);
  frutas.clear();

  Map<String, dynamic> usuario = Map.from({'nome': 'Fernando', 'idade': 36, 'peso': 65.5});
  usuario.update('nome', (valor) => '$valor Martins');
  usuario.update('idade', (valor) => ++valor); //!o valor deve incrementar antes do display
  usuario.update('peso', (valor) => 70, ifAbsent: () => 'indefinido');
  usuario.removeWhere((chave, valor) => chave == 'peso' && valor == 70);
  usuario.update('peso', (valor) => 70, ifAbsent: () => 'indefinido');
  usuario.putIfAbsent('altura', () => 1.83);
  usuario.addAll({'sexo': 'masculino', 'casado': true});
  print(usuario);
}

void main() {
  linkedHashMap();
}
