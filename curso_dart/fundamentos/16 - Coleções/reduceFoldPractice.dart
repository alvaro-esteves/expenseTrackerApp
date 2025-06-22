//EXERCICIO 1: Use fold para calcular a soma de todos os elementos de uma lista de inteiros.

Soma() {
  List<int> numeros = List.generate(5, (e) => e + 3);
  print(numeros);
  int soma = numeros.reduce((anterior, atual) {
    print('$anterior + $atual}');
    return anterior + atual;
  });
  print('Soma: $soma\n');
}

Produto() {
  List<int> numeros = [1, 4, 3, 7];
  int produto = numeros.reduce((anterior, atual) => anterior * atual);
  print(produto);
}

Concatenate() {
  List<String> words = ['Flutter', 'e', 'muito', 'legal'];
  String concatenate = words.reduce((anterior, atual) => anterior + ' ' + atual);
  print(concatenate);
}

Maior() {
  List<int> numero = [10, 25, 8, 32, 15];
  int maior = numero.reduce((anterior, atual) => (anterior > atual) ? anterior : atual);
  int menor = numero.reduce((anterior, atual) => (anterior < atual) ? anterior : atual);
  print(maior);
  print(menor);
}

Media() {
  List<int> lista = [4, 8, 6, 10];
  int media = lista.reduce((anterior, atual) => anterior + atual);
  print('Media: ${media / lista.length}\n');
}

//FOLD
//Exercise 1: Summing a List of Integers
Summing() {
  List<int> summing = [1, 2, 3, 4, 5];
  int valorInicial = 0;
  int sum = summing.fold(valorInicial, (anterior, atual) {
    return anterior + atual;
  });
  print('Summing: $sum\n');
}

Product() {
  List<double> product = [1.5, 2.0, 3.5];
  double valorInicial = 1.0;
  double pro = product.fold(valorInicial, (anterior, atual) {
    return anterior * atual;
  });
  print(pro);
}

Concatenation() {
  List<String> concatenation = ['Hello', ' ', 'World', '!'];
  String valorInicial = '';
  String conca = concatenation.fold(valorInicial, (anterior, atual) => anterior + atual);
  print(conca);
}

Max() {
  List<int> max = [3, 7, 2, 9, 5];
  int valorInicial = 0;
  int retMax = max.fold(valorInicial, (anterior, atual) => (anterior > atual) ? anterior : atual);
  print('Max: $retMax\n');
}

//EXERCISE 5
//Objective: Use the fold function to count how many times a specific element appears in a list.
Counting() {
  List<int> counting = [1, 2, 3, 2, 4, 2, 5];
  int count = counting.fold(0, (anterior, atual) {
    print('${(atual == 2 ? anterior + 1 : anterior)}');
    return atual == 2 ? anterior + 1 : anterior;
  });
  print('Count: $count\n');
}

//Exercise 6: Custom Object Aggregation
abstract class Vendedor {
  String name;
  double sales;

  Vendedor({required this.name, required this.sales});
  totalSales();
}

class Vendas extends Vendedor {
  Vendas({required super.name, required super.sales});

  @override
  totalSales() {
    print('These are the sellers and their total of sales: $name - $sales');
  }
}

main() {
  Soma();
  Produto();
  Concatenate();
  Maior();
  Media();
  //FOLD
  Summing();
  Product();
  Concatenation();
  Max();
  Counting();
  //Exercise 6

  Vendas vendas = Vendas(name: 'Alvaro', sales: 5100.00);
  Vendas vendas1 = Vendas(name: 'Jebson', sales: 4500.00);
  Vendas vendas2 = Vendas(name: 'Junior', sales: 3600.00);

  List<Vendas> melhorVendedor = [vendas, vendas1, vendas2];
  List<double> todasVendas = [vendas.sales, vendas1.sales, vendas2.sales];
  double sum = todasVendas.fold(0, (anterior, atual) {
    return anterior + atual;
  });
  print(sum);

  double melhorVenda = todasVendas.fold(0, (anterior, atual) {
    //print('${(anterior > atual ? anterior : atual)}');
    return anterior > atual ? anterior : atual;
  });
  print(melhorVenda);
}
