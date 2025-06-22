import 'venda.dart';

class Vendedor {
  String nome;
  List<Venda> vendas; // lista do tipo vendas que retorna dois elementos, produtos e preco
  Vendedor(this.nome, this.vendas);
}
