import 'package:conversor_de_moedas/app/Models/moeda_model.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  TextEditingController deTexto = TextEditingController();
  TextEditingController paraTexto = TextEditingController();

  List<MoedaModel> moedas;
  MoedaModel deMoeda;
  MoedaModel paraMoeda;

  HomeController() {
    moedas = MoedaModel.getMoedas();
    deMoeda = moedas[0];
    paraMoeda = moedas[1];
  }

  void convertendo() {
    String texto = deTexto.text;
    double valor = double.tryParse(texto) ?? 1.0;
    double retornandoValor = 0;

    if (paraMoeda.nome == 'Real') {
      retornandoValor = valor * deMoeda.real;
    } else if (paraMoeda.nome == 'Dolar') {
      retornandoValor = valor * deMoeda.dolar;
    } else if (paraMoeda.nome == 'Euro') {
      retornandoValor = valor * deMoeda.euro;
    } else if (paraMoeda.nome == 'BitCoin') {
      retornandoValor = valor * deMoeda.bitcoin;
    }

    paraTexto.text = retornandoValor.toStringAsFixed(2);
  }
}
