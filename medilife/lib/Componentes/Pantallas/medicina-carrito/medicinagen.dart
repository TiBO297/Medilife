import 'package:flutter/material.dart';
import 'package:carrito/Componentes/Pantallas/medicina-carrito/carritocompras.dart';
import 'package:carrito/Componentes/constantes.dart';
import 'package:carrito/Componentes/Pantallas/medicina-carrito/medicinabusca.dart';
import 'medicinalist.dart';

class VistaMedicina extends StatefulWidget {
  VistaMedicina({Key? key}) : super(key: key);

  @override
  _VistaMedicinaState createState() => _VistaMedicinaState();
}

class _VistaMedicinaState extends State<VistaMedicina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medicamentos"),
        actions: [
          IconButton(
            alignment: Alignment.centerLeft,
            icon: Icon(Icons.shopping_cart),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return VerCarrito();
                }));
            },
          ),
          

        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: kColorPrimario,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              InfoMedicina(),
              SizedBox(
                height: 5,
              ),
              MedicinaLista(),
            ],
          ),
        ),
      ),
    );
  }
}
