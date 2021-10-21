import 'package:flutter/material.dart';
import 'package:carrito/Componentes/constantes.dart';

class UsuariosLista extends StatefulWidget {
  UsuariosLista({Key? key}) : super(key: key);

  @override
  _UsuariosListaState createState() => _UsuariosListaState();
}

class _UsuariosListaState extends State<UsuariosLista> {
  List<Color> mycolors = [Colors.red, Colors.teal, Colors.black, Colors.green, Colors.red, Colors.teal, Colors.black, Colors.green, Colors.red, Colors.teal, Colors.black, Colors.green];
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 770,
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