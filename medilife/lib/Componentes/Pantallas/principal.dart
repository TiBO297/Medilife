import 'package:carrito/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:carrito/Componentes/Pantallas/control-medicina/medicinagen.dart';
import 'package:carrito/Componentes/Pantallas/forma-entrega/entregaprincipal.dart';
import 'package:carrito/Componentes/constantes.dart';
import 'package:carrito/Componentes/Pantallas/medicina-carrito/medicinagen.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Inicial"),
        
      ),
      body: Container(
        color: kColorPrimario,
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 45,
              ),
              Text(
                "Opciones para Usuarios",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 45,
              ),

/*
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return VistaMedicina();
                  }));
                },
                color: Colors.lightBlue,
                child:
                    Text('Medicamentos', style: TextStyle(color: Colors.white)),
              ),
*/

              SizedBox(
                height: 45,
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return VistaMedicinaEdit();
                  }));
                },
                color: Colors.lightBlue,
                child: Text('Control de Medicina',
                    style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 45,
              ),

      
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MyLogin();
                  }));
                },
                color: Colors.lightBlue,
                child: const Text('Cerrar sesión',
                    style: TextStyle(color: Colors.white)),
              ),






           /*   
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return VistaEntrega();
                  }));
                },
                color: Colors.lightBlue,
                child: Text('Forma de Entrega',
                    style: TextStyle(color: Colors.white)),
              ),

*/
            ],
          ),
        ),
        
      ),
    );
  }
}
