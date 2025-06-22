class Pessoa {
  int idade;
  String nome;
  String cpf;
  Pessoa({required this.idade, required this.nome, required this.cpf});

  factory Pessoa.fromJson(Map json) {
    return Pessoa(idade: json["idade"], nome: json["nome"], cpf: json["cpf"]);
  }
}

void main() {
  final meuJson = [
    {"idade": 26, "nome": "Vinicius", "cpf": "12312312312"},
    {"idade": 26, "nome": "Alvaro", "cpf": "3566633432"}
  ];

  List<Pessoa> vindoDoJson = List.from(meuJson.map((e) => Pessoa.fromJson(e)));

  for (int i = 0; i < vindoDoJson.length; i++) {
    print(vindoDoJson[i].nome);
    print(vindoDoJson[i].cpf);
  }
}
