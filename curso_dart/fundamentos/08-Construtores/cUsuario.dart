class Usuario {
  String? user, senha, nome, cargo;
  int idade;

  Usuario(this.user, this.senha, this.idade, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = (cargo == null) ? 'usuario' : cargo;
    print('Construtor resumido com parametros nomeados default: ${this.toString()}');
  }
  //construtor nomeado
  //cons. nomeados podem receber parametros diferentes

  Usuario.admin(this.user, this.senha, this.idade, {this.nome}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = 'Administrador';
    print('Construtor resumido com parametros nomeados default: ${this.toString()}');
  }

  void autenticar() {
    //simulacao de um banco da dados
    var user = 'fmda@gmail';
    var senha = 'abc123';
    (this.user == user && this.senha == senha) ? print('Usuario autenticado') : print('Usuario nao autenticado');
  }
}
