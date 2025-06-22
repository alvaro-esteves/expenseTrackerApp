///4 - Principio da segregacao de interfaces (ISP) - resolve o terceiro principio
///nenhuma classe deve ser forcada a depender de metodos que nao utiliza

//Modelo de contrato para um usuario padrao
abstract class IUsuarioPadrao {
  void login();
}

//Modelo de contrato para um usuario admin
abstract class IUsuarioAdmin {
  void acessarAreaRestrita();
}

class UsuarioPadrao implements IUsuarioPadrao {
  @override
  void login() {
    print('Realizando login');
  }
}

class UsuarioAdmin implements IUsuarioPadrao, IUsuarioAdmin {
  @override
  void acessarAreaRestrita() {
    print('acessando area restrita');
  }

  @override
  void login() {
    print('Realizando login');
  }
}

void main() {
  //A classe implementada UsuarioPadrao nao consegue mais utilizar o metodo AcessarAreaRestrita
  //pois nao implementa a interface que contem este metodo. Com isso atendemos o principio SOLID
  //ou seja, a classe nao esta sendo obrigada a depender de metodos que nao utiliza
  var usuario = UsuarioAdmin();
  usuario.login();
  usuario.acessarAreaRestrita();
}
