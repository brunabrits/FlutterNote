import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_rdsocial/main.dart';

class Principal extends StatelessWidget {
  const Principal({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Scaffold( // retornado para estilizar 
   
  backgroundColor: Colors.blue[50], // cor de fundo dele 
    body: SafeArea( // nsere seu filho com preenchimento suficiente para evitar invasões do sistema operacional.
  child: Padding(padding: EdgeInsets.all(40), // espaço total do objeto para fora 
    child: Column( // uma coluna apara criar o elemento 
  children: <Widget>[ // para criar varios elementos dentro, ela ocupa o app todo 
      Padding( // primeira parte, com saudação ao usuario e circle 
    padding: EdgeInsets.only(top: 10), // espaco para baixo 
    child: Row( // uma linha 
    mainAxisAlignment: MainAxisAlignment.spaceBetween, //Divide o espaço extra uniformemente entre as crianças.
      children: <Widget> [Column( // coluna 
      crossAxisAlignment: CrossAxisAlignment.start, // Posiciona as crianças perto do início do eixo transversal. (Topo para Row, Esquerda para Column)
    children: <Widget>[Text(
        "Olá ,", // mensagem para o usuario 
      style: TextStyle(fontSize:25, color:Colors.black45 ), // estilin
                  ),
        Text("Usuario", // mensagem para usuario 
    style: TextStyle(fontSize:25, fontWeight: FontWeight.bold,  ),)
        ],
        ),
             CircleAvatar(radius: 35 , backgroundColor: Colors.blue, // circulo maior do topo 
      ),
        ],
      ),
    ),
      Padding( // segunda parte do codiguin, barra de pesquisa 
            padding: EdgeInsets.only(top:20), // espaço do primeiro pra o segundo cód 
            child: Container( // container para fazer a barra 
              decoration: BoxDecoration( // box pra criar ela 
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,),
                // curvatura dos ponto e cor 
            child: TextField( // a barra propriamente dita 
            style: TextStyle(fontSize: 20, color: Colors.black, // pesquisar oq rolou 
            ),
              decoration: InputDecoration(
                fillColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 20, top: 15, right: 20, bottom: 15,),
                  prefixIcon: Padding(padding: EdgeInsets.only(left:15, right: 15),
                  // pesquisar oq rolou 

                  child: CircleAvatar( // circulo com icone 
              child: Icon(Icons.search), // icone 
                  ),
                  ),
                  hintText: "Pesquisar @", // nome dentro da barra
                    border:InputBorder.none),
                    
            ),
              ),
            ), 
      Padding( // terceira parte do cód os 'stories'
         padding: EdgeInsets.only(top: 10), // espacamento 
          child: Row (children: <Widget>[ // linha 
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width -80,
              child: ListView.builder(
              scrollDirection: Axis.horizontal, // scroll horizontal 
              itemCount: 10, itemBuilder:(BuildContext context, int index){ // quantidade de bolinhas 
                return Padding(padding: EdgeInsets.only(left:10),
                child: CircleAvatar(radius: 35,
                  backgroundColor: index == 0 ? Colors.white : Colors.blue,// cor das bolinhas status 
                  child: CircleAvatar(
                    radius: 33, backgroundColor: Colors.white,
                    child: index ==0 ? Icon(Icons.add):  Text (""),
                    ),
                  ),
                );
                },
                ),
          )
          ],
        
          ),
          ),
      Padding( // quarta parte dos cód 
        padding: EdgeInsets.only(top: 10),
          child: Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white //card
            ),
            height: MediaQuery.of(context).size.height /2.4,
            child: Column(
              children: <Widget>[
                Container(
                  height:MediaQuery.of(context).size.height /3.5, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),
                    ),
                    color: Colors.blue // cor da postagem  colocar child e a img 
                  ),
                ),
                Container(
                  height:MediaQuery.of(context).size.height /7.7,
                  width:MediaQuery.of(context).size.height ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround ,
                    children:<Widget> [
                      Row(
                        children: <Widget>[
                          CircleAvatar(radius: 25 ,
                          ),
                            Padding(padding: EdgeInsets.only(left: 10),
                            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,  
                          children:<Widget> [
                        Text("Usuario", style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold, fontSize: 19, ),),
                        Text("Data 17/03", style: TextStyle(color: Colors.black, fontSize: 17, ),),
                      ],
                      ),
                            )
                        ],
                      ),
                    Icon(Icons.more_vert)
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft:  Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )
                  ) ,
                ),
              ],
            ),
          ),

          ),
          ],
          ),
          ),   
      ),
    );
  }
}































  