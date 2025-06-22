abstract class Animal {
  String idade;
  bool docil;
  bool coluna = false;

  Animal.vertebrado(this.idade, {required this.docil}) {
    this.coluna = true;
  }
  Animal.invertebrado(this.idade, {required this.docil}) {
    this.coluna = false;
  }

  void dormir() {
    print('Dorme como um animal!');
  }
}
