class Calculus {
  double pi = 3.14;
  static double piStatic = 3.14;

  double areaCirculo(double raio) {
    return pi * (raio * raio);
  }

  static double areaCirculoEstatico(double raio) {
    return piStatic * (raio * raio); //2 regra
  }
}
