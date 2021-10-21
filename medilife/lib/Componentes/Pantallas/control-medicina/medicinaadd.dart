import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carrito/Componentes/Pantallas/control-medicina/medicinagen.dart';
import 'package:carrito/Componentes/Pantallas/control-medicina/medicinalist.dart';
import 'package:carrito/Componentes/constantes.dart';

class MedicinaAgregar extends StatelessWidget {
  const MedicinaAgregar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agregar Medicamento"),
      ),
      body: Container(
        color: kColorPrimario,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Text(
              "Agregar los datos del nuevo Medicamento",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.medication,
                      color: Colors.grey,
                    ),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    hintText: "Nombre del Medicamento"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.price_change,
                      color: Colors.grey,
                    ),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    hintText: "Precio"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 70),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.summarize,
                      color: Colors.grey,
                    ),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    hintText: "Cantidad del Medicamento"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return VistaMedicinaEdit();
                }));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                primary: Colors.pink,
              ),
              child: Text('Guardar', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
