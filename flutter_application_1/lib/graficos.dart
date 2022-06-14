import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MenuNavegacao.dart';

class Graficos extends StatelessWidget {
  const Graficos ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuNavegacao(),
      appBar: AppBar(
        title: Text("Gráficos"),
      ),
    );
  }
}