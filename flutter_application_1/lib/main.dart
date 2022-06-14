import 'dart:ui';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MenuNavegacao.dart';
import 'package:flutter_application_1/pesquisa.dart';
import 'package:flutter_application_1/ajuda.dart';
import 'package:flutter_application_1/graficos.dart';
import 'package:flutter/services.dart';
// rascunho enviado no final do ano, abas e login estatico
void main() {
  runApp(MinhaPagina());
}

class MinhaPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch:Colors.purple,),
      home: MinhaNovaPagina(),
    );
  }
}

class MinhaNovaPagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MinhaNovaPaginaEstado();
  }
}

class MinhaNovaPaginaEstado extends State<MinhaNovaPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer:MenuNavegacao(),
      appBar: AppBar(
        title: Text(
          "Principal",
        ), 
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(height: 20,),

            Image.network(
              "data:image/png;base64,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",
                width: 190,
                height: 200,
                fit: BoxFit.fill),

                 Container(
              padding: const EdgeInsets.all(8),
  ),
           
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Login",
                hintText: "Entre com seu login",
               
              ),
            ),

            Container(
              padding: const EdgeInsets.all(6),
  ),

            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Senha",
                hintText: "Entre com sua senha",
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              
            ),
          ],
        ),
      ),
    );
  }
}
