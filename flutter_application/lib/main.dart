import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/menuzin.dart';
// teste do prof com contador 
void main(){
  runApp(Primeirinha()); // execulta nosso app
}

class Primeirinha extends StatelessWidget{ // stateless é uma extensão de metodo estatico, um objeto que faz uma herança 
  @override // chama um processo de codigo, anotacion 
  Widget build (BuildContext context) { // o nosso contexto, o visual do projeto 
   return MaterialApp(  // retorna o nosso facilitador, todo build precisa de um retorno
     debugShowCheckedModeBanner: false,  // retira a faixa de debug do app 
     theme: ThemeData(primarySwatch: Colors.purple ), //  primarySwatch 
     home: Segundinha(),
   );
  }
}// fim da primeira classe

class Segundinha extends StatefulWidget{ // não tem build por isso retornamos dentro do home, e usamos ela como uma 'gambiarinha' 
  @override
  State<StatefulWidget> createState() {
    return Terceirinha();
  }

}
  class Terceirinha extends State<StatefulWidget>{ // corpo do nosso projeto, onde funciona 
    int cont = 0;
    int contin = 2; // criamos uma especie de variavel para determinar o valor de cont 
 @override
 Widget build(BuildContext context){ 
   return Scaffold(
     drawer: MenuzinNav(),  
     appBar: AppBar( // comando que define cores e estiliza os obj
title: Text('Contadorzinho'),

     ),
     body: Container(
        
       child: Column( // 
       // Row que recebe varios filhos na linha e exibe um do lado do outro  
          children: [// 
           Row(
             children: [
               Container(
                 // configuração de uma caixinha 
                   width: 200 , // largura da caixinha
                   height: 200,// altura da caixinha 
                   margin: EdgeInsets.all(20), //que separa da caixinha dos outros elementos 
                   padding:EdgeInsets.all(20) ,// margem de dentro, é o espaço do conteudo de dentro da caixa // EdgeInsets estrutura e o .all seleciona tudo 
                   decoration: BoxDecoration( // ele separa literalmente e visualmente numa caixa 
                   color: Colors.amber,
                   ),
               child: Center( // centraliza tudo o q está dentro 
                 child: // uma função pra colocar outras funções, pois são aceitas umas dentro das outras, ele pode ser quebrada com linhas e colunas 
                GestureDetector( // detector de gesto 
                 child: Text('Posição $cont', 
                 style: TextStyle(color: Colors.purple, fontSize: 20.0 ),),
                 onTap: (){
                   setState(() {
                     cont = cont +4;// abtração do processo ( cont++;)
                   });
                 },
                 ),
                 ),
   ),
   
                 Container(
                 // configuração de uma caixinha 
                   width: 200 , // largura da caixinha
                   height: 200,// altura da caixinha 
                   margin: EdgeInsets.all(40), //que separa da caixinha dos outros elementos 
                   padding:EdgeInsets.all(20) ,// margem de dentro, é o espaço do conteudo de dentro da caixa // EdgeInsets estrutura e o .all seleciona tudo 
                   decoration: BoxDecoration( // ele separa literalmente e visualmente numa caixa 
                   color: Colors.amber,
                   ),
               child: Center( // centraliza tudo o q está dentro 
                 child: // uma função pra colocar outras funções, pois são aceitas umas dentro das outras, ele pode ser quebrada com linhas e colunas 
                GestureDetector( // detector de gesto 
                 child: Text('Posição $contin', 
                 style: TextStyle(color: Colors.purple, fontSize: 20.0 ),),
                 onTap: (){
                   setState(() {
                     contin = contin +4;// abtração do processo ( cont++;)
                   });
                 },
                 ),
                 ),
   ),
             ],
             
           ),
   Container(
               width: double.infinity, // largura da caixinha
               height: 200,// altura da caixinha
               color: Colors.amber, // cor da minha caixinha 
                margin: EdgeInsets.all(20), 
               padding:EdgeInsets.all(30) ,
               child: Text ("Eu vejo um  lobo em seu olhar baby, tão frio faminto e assassino - Orochi e Poze  " ,style: TextStyle(color:Colors.purple, fontSize: 40),),
   ),
         ],
       ),
     )
   ); 
  }
 
}