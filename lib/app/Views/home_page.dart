import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Image.asset('assets/logo.png'),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: DropdownButton(
                    items: [],
                    onChanged: (value) {},
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Valor',
                    ),
                  ),
                ),
              ]),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Converter'),
            ),
          ],
        ),
      ),
    );
  }
}
