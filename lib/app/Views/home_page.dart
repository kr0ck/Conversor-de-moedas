import 'package:conversor_de_moedas/app/Controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'Componentes/box_moeda_componente.dart';

class HomePage extends StatelessWidget {
  final TextEditingController deTexto = TextEditingController();
  final TextEditingController paraTexto = TextEditingController();
  HomeController homeController;

  HomePage() {
    homeController = new HomeController(deTexto: deTexto, paraTexto: paraTexto);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(
                right: 20, left: 20, bottom: 10, top: 100),
            child: Column(
              children: [
                Image.asset('assets/logo.png', width: 150, height: 150),
                SizedBox(
                  height: 50,
                ),
                BoxMoedaComponente(),
                BoxMoedaComponente(),
                SizedBox(height: 50),
                RaisedButton(
                  color: Colors.amber,
                  onPressed: () {},
                  child: Text('CONVERTER'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
