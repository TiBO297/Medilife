import 'package:flutter/material.dart';
import 'package:carrito/Componentes/Pantallas/control-usuario/usuariogen.dart';
import 'package:carrito/Componentes/Pantallas/control-usuario/usuariolist.dart';
import 'package:carrito/Componentes/constantes.dart';

class UsuarioAgregar extends StatelessWidget {
  const UsuarioAgregar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agregar Usuario"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Agrege los datos de nuevo usuario"),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.person_add,
                  color: Colors.grey,
                ),
                hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                hintText: "Nombre de Usuario"),
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                hintText: "Direccion del Usuario"),
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.person_pin,
                  color: Colors.grey,
                ),
                hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                hintText: "Tipo de Usuario"),
            ),
            MaterialButton(
      minWidth: 200.0,
      height: 40.0,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
                    return VistaUsuario();
                  }));
        
      },
      color: Colors.pink,
      child: Text('Guardar', style: TextStyle(color: Colors.white)),
    ),
          ],
        ),
      ),
    );
  }
}