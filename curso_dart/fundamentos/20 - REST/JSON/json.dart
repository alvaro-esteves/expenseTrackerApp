/* CONCEITO:
- Representational State Transfer (Tranferencia Representacional de Estado)
- E uma arquitetura que define um conjunto de restricoes na criacao de web services.
- E uma padronizacao para que multiplas aplicacoes possam se comunicar usando protocolo HTTP


SERIALIZACAO MANUAL - Biblioteca JSON integrada ao Dart 'dart: convert';
SERIALIZACAO JSON direta
- Perde recursos estatico de linguagens
- Seguranca de tipo, autocompletar e excecoes de tempo de compilacao.
-  ERROS NO JSON SAO DESCOBERTOS SOMENTE EM TEMPO DE EXECUCAO*/

/*var map = {
    "name": "dbestech",
    "age": 34,
  };
  String mapString = jsonEncode(map); //MAPA PARA JSON
  print(mapString); //string printada (os quotes confirmam que e string)

  //JSON PARA MAPA
  var mapObject = jsonDecode(mapString);
  print(mapObject); //mapa printado

  //acessando valores especificos no mapa
  print(mapObject["name"]);
  */

import 'dart:convert';

conversaoDireta() {
  print('20.0.0) JSON Conversao Direta\n');

  String jsonData = '''
  {
    "nome" : "Fernanda",
    "idade" : 36,
    "email" : "fm@gmail"
  }
  ''';

  ///DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: $parsedJson');
  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];
  print('USO DIRETO: nome: $nome idade: $idade e-mail: $email\n');

  ///ENCODE
  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};
  String toJson = jsonEncode(map);
  print('Tojson: $toJson');
}

///Serializacao JSON em objeto
/// - Utiliza recursos estaticos de linguagens
/// - Segurancas de tipos, autocompletar e excecoes de tempo de compilacao

conversaoObjeto() {
  print('20.0.0) JSON Conversao Objeto\n');

  //JSON com uma lista de objetos
  String jsonData = '''
  [
  {
    "nome" : "Fernandinho",
    "idade" : 36,
    "email" : "fm@gmail"
  },
   {
    "nome" : "Fernando",
    "idade" : 36,
    "email" : "fm@gmail"
  }
  ]
  ''';

  //DECODE
  List<dynamic> parsedJson = jsonDecode(jsonData); //var parsedJson (tipagem normal, a correta e sempre List<>...)
  print('parsedJson: $parsedJson\n');
  //1 - PARA MANIPULAR ESTE JSON RECEBIDO COMO OBJETO E PRECISO UMA CLASSE MODELO DE ACORDO COM ESTE JSON
  ListaUsuarios listaUsuarios = ListaUsuarios.fromJson(parsedJson);
  Usuario usuario = listaUsuarios.usuarios.singleWhere((e) => e.nome == 'Fernando'); //desbloqueia ${usuario.nome}
  print('USO OBJETO: Nome: ${usuario.nome}, Idade: ${usuario.idade}, Email: ${listaUsuarios.usuarios[0].email}');

  var usuarioNovo = Usuario.fromJson({'nome': 'Chloe', 'idade': 1, 'email': 'cm@gmail.com'});
  listaUsuarios.usuarios.addAll([usuarioNovo]);
}

main() {
  //conversaoDireta();
  conversaoObjeto();
}

class ListaUsuarios {
  List<Usuario> usuarios;

  ListaUsuarios({required this.usuarios});

  factory ListaUsuarios.fromJson(List<dynamic> json) {
    return ListaUsuarios(
      usuarios: json.map((e) => Usuario.fromJson(e)).toList(),
    );
  }

  List<dynamic> toJson() {
    return usuarios;
  }
}

class Usuario {
  //Atalho para criar cons. nomeado, add final apos criar as variables
  String? nome;
  int? idade;
  String? email;

  Usuario({required this.nome, required this.idade, required this.email});

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      nome: json['nome'],
      idade: json['idade'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'email': email,
    };
  }
}
