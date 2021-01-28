import 'package:conversor_de_moedas/app/Models/moeda_model.dart';

class HomeController {
  List<MoedaModel> moedas;
  MoedaModel deMoeda;
  MoedaModel paraMoeda;

  HomeController() {
    moedas = MoedaModel.getMoedas();
    deMoeda = moedas[0];
    paraMoeda = moedas[1];
  }
}
