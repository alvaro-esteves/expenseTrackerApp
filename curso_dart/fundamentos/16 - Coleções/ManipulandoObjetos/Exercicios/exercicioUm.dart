import 'classPrimeiro.dart';
import 'classSegundo.dart';
import 'classQuarto.dart';
import 'classTerceiro.dart';
import 'dart:math';

class Pedido {
  int? numero;
  String? cliente;
  List<Item>? itens;

  Pedido(this.numero, this.cliente, this.itens) {}
}

class Item {
  String? descricao;
  int? quantidade;

  Item({this.descricao, this.quantidade}) {}
}

void main() {
  //?PRIMEIRO EXERCICIO
  var leitura = Livro();
  leitura.leitura();

  List<Livro> biblioteca = [];
  biblioteca.insert(0, Livro(titulo: 'Harry Potter', autor: 'J.K. Rowling', anoPublicacao: 1998));
  biblioteca.insert(1, Livro(titulo: 'Percy Jackson', autor: 'Rick Riordan', anoPublicacao: 2005));
  biblioteca.insert(2, Livro(titulo: 'The Hobbit', autor: 'J.R.R. Tolkien', anoPublicacao: 2020));
  biblioteca.removeAt(0);
  //Atualizando o titulo primeiro livro da lista
  biblioteca[1].titulo = 'O senhor dos Aneis';

  for (int l = 0; l < biblioteca.length; l++) {
    print('Titulo: ${biblioteca[l].titulo}, Autor: ${biblioteca[l].autor}, Ano de Publicacao: ${biblioteca[l].anoPublicacao}');
  }
  //?PRIMEIRO EXERCICIO

  //*SEGUNDO EXERCICIO
  var filme = Filme();
  filme.boasVindas();

  List<Filme> filmes = [];
  filmes.insert(0, Filme(diretor: 'Steven Spielberg', titulo: 'Titanic', anoLancamento: 1996));
  filmes.insert(1, Filme(diretor: 'Michael Bay', titulo: 'Bad Boys', anoLancamento: 1998));
  filmes.insert(2, Filme(diretor: 'Zac Snyder', titulo: 'Batman Begins', anoLancamento: 2008));

  print('Titulo de Ano de lancamento de filmes lancados antes dos anos 2000:');
  for (int f = 0; f < filmes.length; f++) {
    print('${(filmes[f].anoLancamento! < 2000 ? 'Diretor: ${filmes[f].diretor}, Ano: ${filmes[f].anoLancamento}' : '')}');
  }

  print('Filtrando a lista de filmes pelo Titulo: Titanic');
  for (int f = 0; f < filmes.length; f++) {
    print('${(filmes[f].titulo! == 'Titanic' ? 'Diretor: ${filmes[f].diretor}, Ano: ${filmes[f].anoLancamento}' : '')}');
  }

  print('Ha algum filme dirigido por Zac Snyder?');
  bool encontrado = false;

  for (int f = 0; f < filmes.length; f++) {
    if (filmes[f].diretor == 'Zac Snyder') {
      print('Sim\n\n');
      encontrado = true;
      break; //para interromper o loop
    }
  }
  if (!encontrado) {
    print('Nao');
  }
  //*SEGUNDO EXERCICIO

  //?Terceiro exercicio
  print('TERCEIRO EXERCICIO');

  List<Aluno> alunos = [];

  alunos.insert(0, Aluno('Anderson', 13, 7.5));
  alunos.insert(1, Aluno('Jefferson', 15, 8.5));
  alunos.insert(2, Aluno('Endrick', 16, 9.5));
  alunos.insert(3, Aluno('Erick', 12, 10));

  alunos.sort((a, b) => a.nome!.compareTo(b.nome!)); //nome dos alunos por ordem alfabetica
  alunos.sort((b, a) => a.notaFinal!.compareTo(b.notaFinal!));
  alunos.sort((a, b) => a.idade!.compareTo(b.idade!));
  alunos.forEach((e) => print('Nome: ${e.nome}, Idade: ${e.idade}, Nota: ${e.notaFinal}'));

  //?Terceiro exercicio

  //TODO QUARTO EXERCICIO

  var produto = Produto();
  List<Produto> estoque = [];

  estoque.insert(0, Produto(nome: 'Bolsa', categoria: 'Vestuario', preco: 50.00));
  estoque.insert(1, Produto(nome: 'Carregador', categoria: 'Tecnologia', preco: 100.00));
  estoque.insert(2, Produto(nome: 'Manteiga de Cacau', categoria: 'Beleza Corporal', preco: 01.00));
  estoque.insert(3, Produto(nome: 'AirPods', categoria: 'Tecnologia', preco: 1500.00));
  estoque.insert(4, Produto(nome: 'Camiseta', categoria: 'Vestuario', preco: 2000.00));
  estoque.insert(5, Produto(nome: 'Creme', categoria: 'Beleza Corporal', preco: 25.00));

  List<Produto> tecnologia = [];
  estoque.forEach((e) {
    if (e.categoria == 'Tecnologia') {
      tecnologia.add(e);
    }
  });
  tecnologia.forEach((element) => print('Itens em TECNOLOGIA - Nome: ${element.nome}, Preco: ${element.preco}'));

  List<Produto> vestuario = [];
  estoque.forEach((e) {
    if (e.categoria == 'Vestuario') {
      vestuario.add(e);
      print('Itens em Vestuario - Nome: ${e.nome}, Preco: ${e.preco}');
    }
  });

  List<Produto> belezaCorporal = [];
  estoque.forEach((element) {
    if (element.categoria == 'Beleza Corporal') {
      belezaCorporal.add(element);
      print('Itens em BELEZA CORPORAL - Nome: ${element.nome}, Preco: ${element.preco}');
    }
  });

  //calculando a soma de todos os produtos em Beleza Corporal
  double valorTotal = 0;

  for (var produto in estoque) {
    if (produto.categoria == 'Beleza Corporal') {
      valorTotal += produto.preco!;
    }
  }
  print('A soma total dos produtos da classe Beleza Corporal: $valorTotal');

  //removendo os produtos de um categoria especifica
  estoque.removeWhere((produto) => produto.categoria == 'Beleza Corporal');
  print('');
  estoque.forEach((e) => print('Nome: ${e.nome} Categoria: ${e.categoria}, Preco: ${e.preco}'));

//*QUINTO EXERCICIO
  print('\nQuinto Exercicio');

  List<Pedido> pedidos = [];

  pedidos.insert(0, Pedido(1, 'Mauro', [Item(descricao: 'Pedido Entregue', quantidade: 2), Item(descricao: 'Nao entregue', quantidade: 3)]));
  pedidos.insert(1, Pedido(2, 'Augusto', [Item(descricao: 'Pedido Nao Entregue', quantidade: 1)]));
  pedidos.insert(2, Pedido(4, 'Vinicius', [Item(descricao: 'Pedido Entregue', quantidade: 3)]));

  for (int i = 0; i < pedidos.length; i++) {
    for (int b = 0; b < pedidos[i].itens!.length; b++) {
      print('Cliente: ${pedidos[i].cliente}, Numero: ${pedidos[i].numero}, Descricao: ${pedidos[i].itens![b].descricao}, Quantidade: ${pedidos[i].itens![b].quantidade}');
    }
  }

  //exibindo os detalhes do pedido com o maior numero de itens
  Pedido? pedidoMaiorNumeroDeItens; //variavel usada para o proximo if
  int maiorNumeroDeItens = 0; //variavel usada para parar o loop

  print('');
  for (var pedido in pedidos) {
    if (pedido.itens != null && pedido.itens!.length > maiorNumeroDeItens) {
      maiorNumeroDeItens = pedido.itens!.length;
      pedidoMaiorNumeroDeItens = pedido;
    }
  }
  if (pedidoMaiorNumeroDeItens != null) {
    print('Pedido com o maior número de itens:');
    print('Cliente: ${pedidoMaiorNumeroDeItens.cliente}');
    print('Número: ${pedidoMaiorNumeroDeItens.numero}');
    print('Itens:');
    for (var item in pedidoMaiorNumeroDeItens.itens!) {
      print('- Descrição: ${item.descricao}, Quantidade: ${item.quantidade}');
    }
  } else {
    print('Nenhum pedido com itens encontrado.');
  } //REVISAR

//*QUINTO EXERCICIO
}

//TODO QUARTO EXERCICIO
