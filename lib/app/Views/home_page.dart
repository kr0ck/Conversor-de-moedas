import 'package:conversor_de_moedas/app/Controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'Componentes/box_moeda_componente.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController;

  final TextEditingController deTexto = TextEditingController();

  final TextEditingController paraTexto = TextEditingController();

  @override
  void initState() {
    super.initState();
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
                BoxMoedaComponente(
                    itemSeleciondado: homeController.deMoeda,
                    items: homeController.moedas,
                    onChanged: (model) {
                      setState(() {
                        homeController.deMoeda = model;
                      });
                    },
                    controller: deTexto),
                BoxMoedaComponente(
                    itemSeleciondado: homeController.paraMoeda,
                    items: homeController.moedas,
                    onChanged: (model) {
                      setState(() {
                        homeController.paraMoeda = model;
                      });
                    },
                    controller: paraTexto),
                SizedBox(height: 50),
                RaisedButton(
                  color: Colors.amber,
                  onPressed: () {
                    homeController.convertendo();
                  },
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
