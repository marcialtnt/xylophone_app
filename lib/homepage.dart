import 'package:flutter/material.dart';

import 'models/xilofono.dart';

Xilofono miXilofono = Xilofono(7, 0xff300101);

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...miXilofono.teclas.map((e) => Expanded(
            child: MaterialButton(
              color: Color(e.color),
              onPressed: e.tocarNota,
            ),
          )),
        ],
      ),
    );
  }
}
