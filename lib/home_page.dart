import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Basicamente a tela principal do esquema.

    //App bar -> Barra superior dos aplicativos. Bastante comum nos apps modernos.
    //Drawer -> Menu lateral que geralmente aparece ao clicar nos 3 pontos em quase qualquer aplicativo moderno.
    //Actions -> Fica no lado direito da AppBar <Array -> pode ter vários filhos>
    //Center componente de Layout, apenas posicionamento dos widgets
    //Body conteúdo principal da aplicação

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "SFML >>> FLUTTER",
          style: TextStyle(color: Colors.black), // bastante intuitivo
        ),

        foregroundColor: Colors.black, // Cor dos componentes <Da appBar nesse casp>

        actions: const [
          Center(
            child: Text("+"),
          )
        ],

      ),

      drawer:const Drawer(),
      //endDrawer: EndDrawer(), Drawer na direita
      body: Container(

        width: 400,
        height: 300,
        color: Colors.red,

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Linhas
          crossAxisAlignment: CrossAxisAlignment.start, //Colunas
          children: [
            SizedBox(height: 10, width: 50),
            const Text("Linha 1"),
            const Text("Linha 2"),
            const Text("Linha 3"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Texto 1"),
                Text("Texto 2"),
              ],
            )
          ],
        ),


      ),

    );
  }



}