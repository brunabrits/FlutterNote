import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_rdsocial/principal.dart';
// login funcionando e rede social 
void main(){
  runApp(MyHome());
}
// primeira parte 
class MyHome extends StatelessWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, ), 
      home: NewMyHome(),            
    );
  }
}
// segunda parte
class NewMyHome extends StatefulWidget {
  const NewMyHome({ Key? key }) : super(key: key);
   @override
  State<NewMyHome> createState() => _NewMyHomeState();
}
// terceira parte 
class _NewMyHomeState extends State<NewMyHome> {

  String email = '';
  String senha = '';

  get child => null; 

// exectl
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.blue[50],
      body: Center(
          child: SingleChildScrollView(
         
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              
              child: Padding(
                padding: EdgeInsets.all(50),
                
                child: Column(
                  children: [
                      Text("Seja Bem Vindo @ !",style: TextStyle(color: Colors.blue, fontSize: 35, fontFamily:'Arial' ),),
                    SizedBox(height: 15,),
                    
                    TextField(
                      onChanged: (text){
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    
                    SizedBox(height: 10,),
                    
                    TextField(
                      obscureText: true,
                      onChanged: (text){
                        senha = text;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    
                    SizedBox(height: 10,),

                    ButtonTheme(
                      minWidth: double.infinity,
                      height: 60,
                      child: RaisedButton(
                        onPressed: (){
                        if(email=='azul@gmail.com'
                        && senha == '1234'){
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context)=>Principal()));
                        }else{
                          print('login invalido');
                        }
                      },
                      child: Text("Entrar", 
                      style: TextStyle(color:Colors.white, 
                      fontSize: 20),),
                      
                      ),
                    ),
                  ],
                
              
            ),
            
          ),
      
    ),

    ),
          ),
      );
  }
}

