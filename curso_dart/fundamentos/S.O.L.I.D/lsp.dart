///3 - Principio da Substituicao de Liskov
///Classes derivadas devem ser substituidas por suas classes bases

abstract class IUsuario {
  void login();
  void acessarAreaRestrita();
}

class UsuarioAdmin implements IUsuario {
  @override
  void acessarAreaRestrita() {
    print('acessando area restrita');
  }

  @override
  void login() {
    print('realizando login');
  }
}

class UsuarioPadrao implements IUsuario {
  @override
  void acessarAreaRestrita() {
    throw Exception('este ususario nao possui acesso');
  }

  @override
  void login() {
    print('realizando login');
  }
}

void main() {
  // A classe implementada UsuarioPadrao nao consegue
  //ser substituida com eficacia pela classe base IUsuario
  IUsuario usuario = UsuarioAdmin();
  usuario.login();
  usuario.acessarAreaRestrita();
}
