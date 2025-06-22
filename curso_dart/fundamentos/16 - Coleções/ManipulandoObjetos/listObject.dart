import 'pessoa.dart';
import 'vendedor.dart';
import 'venda.dart';
import 'proprietario.dart';
import 'carro.dart';
import 'caracteristicas.dart';
import 'multa.dart';

//?Criando uma lista de proprietarios no qual o proprietario possui um carro e eu posso verificar as multas que o veiculo tem
//? Primeira classe: Proprietario; Segunda classe Carro; Terceira classe: Caracteristicas; Quarta classe: Multas

//!MAIN FUNCTION////////////////////////////////////
main() {
  print('16.1.7) List: Manipulando Objetos\n');

  Pessoa p1 = Pessoa('Fernando', 'Martins', identidade: 12345678);
  Pessoa p2 = Pessoa('Leila', 'Martins', identidade: 87654321);

  List<Pessoa> pessoas = [p1, p2];
  pessoas.add(Pessoa('Chloe', 'Martins'));
  //print(pessoas); fazendo o print aqui, somente a instancia de pessoas e apresentada
  //nao os elementos

  //MANIPULANDO O OBJETO UTILIZANDO OS LOOPS, FOR, FOR IN E FOR EACH
  //para que possa fazer o display dos elementos
  for (var i = 0; i < pessoas.length; i++) {
    print('Nome: ${pessoas[i].nome}, Sobrenome: ${pessoas[i].sobrenome} Identidade: ${pessoas[i].identidade}');
  }
  print('\n');
  for (var pessoa in pessoas) {
    print('Nome: ${pessoa.nome}, Sobrenome: ${pessoa.sobrenome}, Identidade: ${pessoa.identidade}');
  }
  print('\n');
  pessoas.forEach((element) => print('Nome: ${element.nome} Sobrenome: ${element.sobrenome} Identidade: ${element.identidade}'));

  //List<Vendedor> vendedores = List(); WRONG INSTANTIATION
  List<Vendedor> vendedores = []; //intancia correta
  //ADICIONANDO UM VENDEDOR A LISTA DE VENDEDORES
  vendedores.add(
    Vendedor('Fernando', [Venda('IphoneX', 4199.99), Venda('MacbookPro', 5300.00), Venda('GalaxyS10', 3500.25)]),
  );
  vendedores.add(
    Vendedor('Leila', [Venda('Iphone8', 3000.00), Venda('GalaxyS10', 3500.25), Venda('IphoneX', 4199.99)]),
  );
  vendedores.add(Vendedor(
    'Chloe',
    [Venda('IphoneX', 4199.99), Venda('IphoneX', 4199.99), Venda('GalaxyS10', 3500.25)],
  ));

  for (var vendedor in vendedores) {
    for (var venda in vendedor.vendas) {
      print('Nome do Vendedor: ${vendedor.nome}, Nome do Produto: ${venda.produtosGet}, Preço do Produto: ${venda.precoGet}');
    }
  }

  //ORGANIZANDO LISTA DE VENDAS PELA SOMA TOTAL
  //.sort((b, a) => a.compareTo(b));
  vendedores.sort(
    (b, a) => (a.vendas.fold(0.0, (anterior, atual) => anterior + atual.preco!).compareTo(
          b.vendas.fold(0, (anterior, atual) => anterior + atual.preco!),
        )),
  );

  ///*Since preco is a double, the accumulator should also start as a double (i.e., 0.0 instead of 0).
  ///*The preco field in Venda is nullable (double?), so using ! ensures that it’s treated as non-nullable in this context.

  print('\n16.1.8) List ordenando objetos\n');
  //organizando e retornando as vendas de cada vendedor em ordem crescente
  vendedores.forEach(
    (e) => e.vendas.sort(
      (b, a) => a.preco!.compareTo(b.preco!),
    ),
  );

  ///*The preco field in Venda is nullable (double?), so using ! ensures that it’s treated as non-nullable in this context.
  vendedores.forEach(
    (e) => print('Vendedor #${e.nome}, ${e.vendas.length}, totalizando: ${e.vendas.fold(0.0, (anterior, atual) => anterior + atual.preco!)} reais'
        '\t vendas: ${e.vendas.map((e) => e.preco).toList()}'),
  );

  print('\n16.1.9) List escopo de loops em Objetos\n');

  ///
  ///
  ///
  //?Printando uma lista de proprietarios no qual o proprietario possui um carro e eu posso verificar as multas que o veiculo tem
  List<Proprietario> proprietarios = [];
  proprietarios.insert(
    0,
    Proprietario(
      'Fernando',
      'Rua 3',
      [
        Carro(
          'BMW',
          'BXZ-1711',
          'M3',
          Caracteristicas('Coupe', 2, 300, 'Gasolina'),
          multas: [
            Multa('Excesso de velocidade', 'Grave', 50),
          ],
        ),
      ],
    ),
  );
  proprietarios.insert(
    1,
    Proprietario(
      'Leila',
      'Rua 3',
      [
        Carro(
          'BMW',
          'BXZ-1711',
          'M3',
          Caracteristicas('Coupe', 2, 300, 'Gasolina'),
          multas: [
            Multa('Excesso de velocidade', 'Grave', 10),
          ],
        ),
      ],
    ),
  );

  proprietarios.sort((a, b) => a.nome.compareTo(b.nome)); //?Nome em ordem alfabetica
  proprietarios.forEach((e) {
    e.carros.forEach(
      (e) => e.multas.sort(
        (a, b) => a.pontos.compareTo(b.pontos),
      ),
    );
  }); //?Multas em ordem crescente

  for (int i = 0; i < proprietarios.length; i++) {
    for (int j = 0; j < proprietarios[i].carros.length; j++) {
      for (int m = 0; m < proprietarios[i].carros[j].multas.length; m++) {
        print('Proprietario ${i}: ${proprietarios[i].nome}, Carro: ${proprietarios[i].carros[j].marca}-${proprietarios[i].carros[j].modelo} '
            'Placa: ${proprietarios[i].carros[j].placa} Tipo: ${proprietarios[i].carros[j].caracteristica.tipo} '
            'N# de passageiros: ${proprietarios[i].carros[j].caracteristica.passageiros} Multas: ${proprietarios[i].carros[j].multas[m].descricao}'
            ' - ${proprietarios[i].carros[j].multas[m].pontos} - ${proprietarios[i].carros[j].multas[m].tipo}');
      } //display da posicao
    }
  }
}
