///1 - RESPONSABILIDADE UNICA (SRP)
///UMA CLASSE DEVE SER REPONSAVEL POR APENAS UMA COISA

///FORMA INCORRETA
/*
class Pagamentos{
  void pagar (){
    print('pagamento realizado');
    gerarComprovante();
  }

  //Este metodo nao diz respeito
  //a pagamentos (modo incorreto)
  void gerarComprovante(){
    print('comprovante gerado');
  }
}
*/
//FORMA CORRETA
//CRIAR CLASSE PARA GERAR COMPROVANTES

class Pagamentos {
  void pagar() {
    print('pagamento realizado');
    Comprovantes.gerarComprovante();
  } //essa class continua fazendo duas coisas mas nao e mais responsavel pelas duas coisas
}

class Comprovantes {
  static void gerarComprovante() {
    print('Gerando comprovante');
  }
}

void main() {
  final Pagamentos pagamentos = Pagamentos();
  pagamentos.pagar();
}
