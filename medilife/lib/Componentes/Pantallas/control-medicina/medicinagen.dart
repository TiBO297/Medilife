import 'package:flutter/material.dart';
import 'package:carrito/Componentes/Pantallas/control-medicina/medicinaboton.dart';
import 'package:carrito/Componentes/Pantallas/control-medicina/medicinadato.dart';
import 'package:carrito/Componentes/Pantallas/control-medicina/medicinalist.dart';
import 'package:carrito/Componentes/constantes.dart';

class VistaMedicinaEdit extends StatefulWidget {
  VistaMedicinaEdit({Key? key}) : super(key: key);

  @override
  _VistaMedicinaEditState createState() => _VistaMedicinaEditState();
}

class _VistaMedicinaEditState extends State<VistaMedicinaEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Control de Medicina"),
      ),
      body: 
      SingleChildScrollView(
        child: Container(
          color: kColorPrimario,
          child: Column(
            children: <Widget>[
              SizedBox(height: 15,),
              DatosMedicina(),
              SizedBox(height: 5,),
              UsuariosLista(),
              SizedBox(height: 35,),
              Boton(),
              SizedBox(height: 40,)
            ],
          ),
        )),
    );
  }
}