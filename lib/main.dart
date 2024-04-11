import 'dart:html';
import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(app());
}
class app extends StatelessWidget{
  bool _showPassword = false;
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 154, 129),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child:Column(
            crossAxisAlignment:  CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 400,
                  width: 1850,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                  Image.asset(
                  'imagens/a1.png',
                  width: 300,
                  height: 500,
                ),]
                ),),
                
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: new TextStyle(color: Colors.white, fontSize:20),
                  decoration: InputDecoration( 
                    icon: Icon(Icons.person, color: Colors.white,),
                    labelText: 'CPF',
                    labelStyle: TextStyle(color:Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(132, 1, 30, 27))
                    ),
                    
                    ),
                    ),
                 TextFormField(
                  
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: new TextStyle(color: Colors.white, fontSize:20),
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock, color: Colors.white,                    ),
                    labelText: 'Senha',
                    labelStyle: TextStyle(color:Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(132, 1, 30, 27))
                      
                    ),
                    suffixIcon: GestureDetector(
                        child: Icon(Icons.visibility, color: Color.fromARGB(153, 3, 30, 20)),
                    ),
                    ),
                    obscureText: true,
                    ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      },
                    child: Container(
                      width: double.infinity, // Define a largura para preencher o espaço disponível
                      height: 50, // Define a altura do botão
                      child: Center(
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 253, 253, 253)),
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 17, 163, 161)), // Cor de fundo do botão
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7), // Define a borda do botão para torná-lo quadrado
                        ),
                      ),
                    ),
                  ),
                  Container(
              height: 100,
              width: 100,
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Primeiro acesso', style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 255, 255, 255)),),
                  Text('Recuperar senha', style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 255, 255, 255)),), 
                ],
              
              
              ),
              
            ),
                ],       
            ),
          
         ),
      
    ),  ),
    );
  }

}