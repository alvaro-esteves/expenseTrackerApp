import 'animal.dart';

abstract class Mamiferos extends Animal {
  String sexo;
  String? desenvolvimento;

  Mamiferos.placentarios(this.sexo, idade, {docil}) : super.vertebrado(idade, docil: docil) {
    this.desenvolvimento = 'Placentarios';
  }
  Mamiferos.marsupiais(this.sexo, idade, {docil}) : super.vertebrado(idade, docil: docil) {
    this.desenvolvimento = 'Placentarios + Bolsa externa';
  }
  Mamiferos.monotremados(this.sexo, idade, {docil}) : super.vertebrado(idade, docil: docil) {
    this.desenvolvimento = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta\nComo um animal');
  }

  void reproduzir();
  //METODOS SEM ESCOPO EM CLASSES ABSTRATAS DEVEM SER SOBRESCRITOS NAS CLASSES HERDEIRAS
}
