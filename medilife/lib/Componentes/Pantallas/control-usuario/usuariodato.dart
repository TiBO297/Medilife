import 'package:flutter/material.dart';
import 'package:carrito/Componentes/constantes.dart';

class DatosUsuarios extends StatelessWidget {
  const DatosUsuarios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            this.titulo(),
            SizedBox(height: 5,)
          ],
        )),
    );
  }

  Widget titulo(){
    return Column(
      children: <Widget>[
        Container(
          child: Text("Herramienta de Control de Usuarios", style: TextStyle(
            fontSize: 25
          ),),
        ),
        Container(
          child: Image.asset('assets/img/user.png', width: 150,),
        )
      ],
    );
  }
}
