import 'package:conversor_de_moedas/app/Controllers/home_controller.dart';
import 'package:conversor_de_moedas/app/Models/moeda_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController deTexto = TextEditingController();
  final TextEditingController paraTexto = TextEditingController();
  final homeController = HomeController(deTexto: deTexto, paraTexto: paraTexto);

  test(
    'Deve converter de real para dolar com ponto',
    () {
      deTexto.text = '2.0';
      homeController.convertendo();
      expect(paraTexto.text, '0.36');
    },
  );
  test(
    'Deve converter de real para dolar com virgula',
    () {
      deTexto.text = '2.0';
      homeController.convertendo();
      expect(paraTexto.text, '0.36');
    },
  );

  test(
    'Deve converter de dolar para real',
    () {
      deTexto.text = '1.0';
      homeController.deMoeda = MoedaModel(
        nome: "Dolar",
        real: 5.65,
        dolar: 1.0,
        euro: 0.85,
        bitcoin: 0.000088,
      );
      homeController.paraMoeda = MoedaModel(
        nome: "Real",
        real: 1.0,
        dolar: 0.18,
        euro: 0.15,
        bitcoin: 0.000016,
      );
      homeController.convertendo();
      expect(paraTexto.text, '5.65');
    },
  );
}
