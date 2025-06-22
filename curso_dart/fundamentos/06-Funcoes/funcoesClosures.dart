///
///Uma closure ocorre quando uma funcao é declarada dentro do corpo de outra funcao
///Podendo retornar as viariaveis locais e da funcao superior
///

funcaoClosures() {
  print('06.5.1) Closures sem retorno\n');

  var saudacao = (String nome) {
    var mensagem = (complemento) => print('Ola $nome! $complemento');
    mensagem('Seja bem vindo!');
  };
  //print(saudacao);
  saudacao('Fernando');

  print('\n06.5.2) Closures com retorno\n');

  Function somar(int valorA) {
    return (valorB) {
      return valorA + valorB;
    };
  }

  var somarDez = somar(10);
  print(somarDez(5));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontarDez = porcentagem(.9);
  var descontarVinte = porcentagem(.8);
  print(descontarDez(100));
  print(descontarVinte(200));

  print('\n06.5.2) Closures com Objeto\n');

  //!FLUTTER RECOMENDA USAR FUNCTION DECLARATION DO QUE VARIABLE ASSIGNMENT
  novoObjeto() {
    var id = 0;
    objetoCriado(String nome, descricao) {
      //return 'id: ${(++id).toString().padLeft(2, '0')} nome: $nome, descricao: $descricao'; // a lista de ids sera 01, 02...
      //!alterando a funcao para que retorne um MAP
      //return {'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao};
      //?configurando para que retorne um objeto
      //return Objeto.fromMap({'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao});
      return Objeto.fromMap({'id': (++id).toString().padLeft(2, '0'), 'nome': nome, 'descricao': descricao});
    }

    ;
    return objetoCriado;
  }

  ;

  var objeto = novoObjeto();
  print(objeto);

  var listaObjetos = [objeto('Fernando', 1.99)];
  listaObjetos.add(objeto('Iphone', 3000.00));
  listaObjetos.add(objeto('Fones', 100));

  for (var objeto in listaObjetos) {
    //print(objeto.substring(7)); //?fazendo o print a partir de nome em diante
    //print(objeto.map((chave, valor) => MapEntry(chave, (valor is double) ? '${descontarDez(valor)}' : valor)));
    //?descontando 10% de todo valor que for double
    //print(objeto.map(chave, valor) =>MapEntry (chave, (valor is double) ? '${descontarDez(valor)}' : valor));
    print((objeto.descricao is num) ? descontarVinte(objeto.descricao) : objeto.descricao);
  }
}

class Objeto {
  String? id, nome;
  dynamic descricao;
  Objeto({
    this.id,
    this.nome,
    this.descricao,
  });
  factory Objeto.fromMap(Map<String, dynamic> map) {
    return Objeto(
      id: map['id'].toString(),
      nome: map['nome'],
      descricao: map['descricao'],
    );
  }
}

void main() {
  funcaoClosures();
}
//!FINALIZAR MODULO DE MAP E VOLTAR PARA ESTE MODULO
