import 'package:flutter/material.dart';
import 'package:carrito/Componentes/Pantallas/control-usuario/usuarioboton.dart';
import 'package:carrito/Componentes/Pantallas/control-usuario/usuariodato.dart';
import 'package:carrito/Componentes/Pantallas/control-usuario/usuariolist.dart';
import 'package:carrito/Componentes/constantes.dart';

class VistaUsuario extends StatefulWidget {
  VistaUsuario({Key? key}) : super(key: key);

  @override
  _VistaUsuarioState createState() => _VistaUsuarioState();
}

class _VistaUsuarioState extends State<VistaUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Control de Uusarios"),
      ),
      body: 
      SingleChildScrollView(
        child: Container(
          color: kColorPrimario,
          child: Column(
            children: <Widget>[
              SizedBox(height: 15,),
              DatosUsuarios(),
              SizedBox(height: 5,),
              UsuariosLista(),
              SizedBox(height: 5,),
              Boton(),
            ],
          ),
        )),
    );
  }
}