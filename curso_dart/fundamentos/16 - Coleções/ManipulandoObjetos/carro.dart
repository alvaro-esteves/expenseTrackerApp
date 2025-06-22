import 'caracteristicas.dart';
import 'multa.dart';

class Carro {
  String marca, modelo, placa;
  Caracteristicas caracteristica;
  List<Multa> multas;
  Carro(this.marca, this.placa, this.modelo, this.caracteristica, {List<Multa>? multas}) : multas = multas ?? [];
  //! TERNARIO AO CONTRARIO - this.multas = multas; EXPRESSAO RETORNA ERRO PQ MULTAS TEM QUE TER ALGUM VALOR
}
