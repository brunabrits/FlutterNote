import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/adicionar.dart';
import 'package:flutter_application/alarminho.dart';

class MenuzinNav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Drawer( 
       child: Material(
         color:Colors.white,
         child: ListView(// criar uma lista debaixo da outra 
        children: <Widget>[// vaipuxar e  receber arquivos 
       Container(
         child: Column(
           children: [
             menuitem(icone:Icons.alarm, texto: "alarmimho", abrir:()=>selecao(context,0)),
              menuitem(icone:Icons.add, texto:"adicionar o horario",abrir:()=>selecao(context,1) ),
           ],
         ),
       )
        ],
         ),
       ),
     );
  }
}
  Widget menuitem({
   required IconData icone,
   required String texto,
  VoidCallback? abrir,
 
 }) { // IconData é o tipo de texto 
   return ListTile (// uma linha do lado da outra
   leading: Icon(icone, color:Colors.black ),// vai receber um icon, criamos uma rotina
   title: Text(texto, style: TextStyle(color:Colors.black,), ),
   hoverColor: Colors.amber,
   onTap: abrir,
   );
 }

 void selecao(BuildContext context, int i) {
   Navigator.of(context).pop();
   switch(i){
    case 0:
    Navigator.of(context).push(MaterialPageRoute(builder:(context)=>alarminho(),),);
    break;

     case 1:
    Navigator.of(context).push(MaterialPageRoute(builder:(context)=>adicionar(),),);
    break;
   }
 }