import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var games = ["Pou", "Fornite", "Pacman", "Mortal Kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView tipo 2'),
        ),
        body: ListView.separated(
            //Obener el tamaño de mi lista
            itemCount: games.length,
            //Creamos el constructor de cada elemento de mi lista
            itemBuilder: (context, index) => ListTile(
              //asignamos el titulo apartir de mi lista
              title: Text(games[index]),
              //asignamos el icono de cada elemento
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
              onTap: (){
                var seleccion=games[index];
                print(seleccion);
              },
            ),
             separatorBuilder: (_,__)=> Divider(),
            )
            );
  }
}
