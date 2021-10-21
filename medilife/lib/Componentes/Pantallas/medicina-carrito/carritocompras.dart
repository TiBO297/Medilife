import 'package:flutter/material.dart';
import 'package:carrito/Componentes/Pantallas/medicina-carrito/carritolista.dart';
import 'package:carrito/Componentes/Pantallas/medicina-carrito/medicinagen.dart';
import 'package:carrito/Componentes/constantes.dart';
import 'medicinalist.dart';

class VerCarrito extends StatefulWidget {
  @override
  _VerCarritoState createState() => _VerCarritoState();
}

class _VerCarritoState extends State<VerCarrito> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carrito de compras")),
      body:SafeArea(child: SingleChildScrollView(
        child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 15,),
            Text("Cosas Agregadas al Carrito", style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 15,),
            ListaCompra(),
            SizedBox(height: 15,),
            this.botones(),
          ],
        ),
      ),
    ),
      ) 
      
    );
  }

  Widget botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return VistaMedicina();
                }));
              },
              color: Colors.blueAccent,
              child: Text('Seleccionar otro', style: TextStyle(color: Colors.white)),
            ),
        SizedBox(
          width: 25,
        ),
        MaterialButton(
          minWidth: 200.0,
          height: 40.0,
          onPressed: () {},
          color: Colors.lightGreen,
          child: Text('Procesar', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
