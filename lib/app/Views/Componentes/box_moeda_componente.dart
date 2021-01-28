import 'package:flutter/material.dart';

class BoxMoedaComponente extends StatelessWidget {
  const BoxMoedaComponente({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: SizedBox(
          height: 65,
          child: DropdownButton(
            iconEnabledColor: Colors.amber,
            isExpanded: true,
            underline: Container(
              height: 1,
              color: Colors.amber,
            ),
            items: [
              DropdownMenuItem(child: Text('Real')),
              DropdownMenuItem(child: Text('Dolar')),
            ],
            onChanged: (value) {},
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
        flex: 2,
        child: TextField(
          decoration: InputDecoration(
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
