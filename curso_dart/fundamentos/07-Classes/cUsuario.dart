class Usuario {
  String? usuario;
  String? senha;

  void autenticar() {
    //dados indiferentes dos dados da class Usuario
    var usuario = 'fma@gmail';
    var senha = '123456';

    if (this.usuario == usuario && this.senha == senha) {
      print('Usuario autenticado!\n');
    } else {
      print('Usuario nao autenticado\n');
    }
  }
}
