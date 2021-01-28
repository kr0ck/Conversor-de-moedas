import 'package:conversor_de_moedas/app/Models/moeda_model.dart';
import 'package:flutter/material.dart';

class BoxMoedaComponente extends StatelessWidget {
  final List<MoedaModel> items;
  final TextEditingController controller;
  final void Function(MoedaModel model) onChanged;
  final MoedaModel itemSeleciondado;

  const BoxMoedaComponente({
    Key key,
    this.items,
    this.controller,
    this.onChanged,
    this.itemSeleciondado,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: SizedBox(
          height: 65,
          child: DropdownButton<MoedaModel>(
            value: itemSeleciondado,
            iconEnabledColor: Colors.amber,
            isExpanded: true,
            underline: Container(
              height: 1,
              color: Colors.amber,
            ),
            items: items
                .map((e) => DropdownMenuItem(value: e, child: Text(e.nome)))
                .toList(),
            onChanged: onChanged,
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
        flex: 2,
        child: TextField(
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          controller: controller,
          decoration: InputDecoration(
            prefixText: '\$ ',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.amber),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.amber),
            ),
          ),
        ),
      ),
    ]);
  }
}
