import 'package:flutter/material.dart';
import 'package:carrito/Componentes/Pantallas/control-usuario/usuarioadd.dart';
import 'package:carrito/Componentes/Pantallas/control-usuario/usuariomod.dart';
import 'package:carrito/Componentes/constantes.dart';

class Boton extends StatelessWidget {
  const Boton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          MaterialButton(
            minWidth: 200.0,
            height: 40.0,
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context){
                  return UsuarioAgregar();
                }));
            },
            color: Colors.lightGreen,
            child: Text('Agregar', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(width: 5,),
          MaterialButton(
            minWidth: 200.0,
            height: 40.0,
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context){
                  return UsuarioMod();
                }));
            },
            color: Colors.lightBlue,
            child: Text('Modificar', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(width: 5,),
          MaterialButton(
            minWidth: 200.0,
            height: 40.0,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AlertDialog(
        title: const Text('Usuario Eliminado'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('El usuario seleccionado ha sido eliminado exitosamente', textAlign: TextAlign.center,),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cerrar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
      }));
            },
            color: Colors.red,
            child: Text('Eliminar', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
