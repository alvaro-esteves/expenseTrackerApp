import 'animal.dart';

class Mamiferos extends Animal {
  String? sexo;

  Mamiferos(this.sexo, idade, docil) : super(idade, docil: docil);

  void comer() {
    print('Come como um animal!');
  }
}
