class Venda {
  String? produtos;
  double? preco;
  Venda(this.produtos, this.preco);

  //getter para dar acesso ao loop que faz o display de todas as vendas
  String? get produtosGet => produtos;
  double? get precoGet => preco;
}
