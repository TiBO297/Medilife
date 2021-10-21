import 'package:flutter/material.dart';
import 'package:carrito/Componentes/constantes.dart';

class DatosMedicina extends StatelessWidget {
  const DatosMedicina({Key? key}) : super(key: key);

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
          child: Text("Herramienta de Control de Medicamentos.", style: TextStyle(
            fontSize: 25
          ),),
        ),
        Container(
          child: Image.asset('assets/img/medicina.png', width: 150,),
        )
      ],
    );
  }
}
