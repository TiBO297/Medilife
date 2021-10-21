import 'package:flutter/material.dart';
import 'package:carrito/Componentes/Pantallas/medicina-carrito/medicinagen.dart';
import 'package:carrito/Componentes/constantes.dart';
import 'medicinalist.dart';

class ListaCompra extends StatelessWidget {
  const ListaCompra({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    List<Color> mycolors = [Colors.red, Colors.teal, Colors.black, Colors.green, Colors.red, Colors.teal, Colors.black, Colors.green, Colors.red, Colors.teal, Colors.black, Colors.green];
    
    return Card(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 860,
              width: 600,
              child: GridView.builder(
                  itemCount: mycolors.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 300),
                  itemBuilder: (context, int index) {
                    /*onTap: (){
                      gotoDetailpage(context, mycolors);
                    }*/
                    return Container(
                      color: mycolors[index],
                    );
                    
                  }),
                  
            ),
          ],
        ),
      ),
    );
  }
}
