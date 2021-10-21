import 'package:flutter/material.dart';
import 'package:carrito/Componentes/Pantallas/medicina-carrito/carritocompras.dart';
import 'package:carrito/Componentes/Pantallas/medicina-carrito/medicinagen.dart';
import 'package:carrito/Componentes/constantes.dart';
import 'medicinalist.dart';

class MedicinaDetalle extends StatefulWidget {
  //final mycolors mycolors;

  @override
  _MedicinaDetalleState createState() => _MedicinaDetalleState();
}

class _MedicinaDetalleState extends State<MedicinaDetalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Hero(
            tag: "Titulo",
            child: Text(
              "Detalle del medicamento",
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          ),
          Hero(
              tag: "Medicina",
              child: Image.asset(
                'assets/img/acetaminofe.png',
                width: 500.0,
              )),
          SizedBox(height: 30),
          Column(
            children: [
              Text("Acetaminofen", style: TextStyle(fontSize: 20)),
              Text("MK 500G", style: TextStyle(fontSize: 20)),
              Text("20 tabletas", style: TextStyle(fontSize: 20)),
              Text("2.50", style: TextStyle(fontSize: 20)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AlertDialog(
                      title: const Text('Producto agregado'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: const <Widget>[
                            Text(
                              'Su producto ha sido agregado con exito\na su carrito de compras',
                              textAlign: TextAlign.center,
                            ),
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
                color: Colors.lightBlue,
                child: Text('Agregar', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                width: 25,
              ),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return VerCarrito();
                  }));
                },
                color: Colors.lightGreen,
                child:
                    Text('Ver Carrito', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Regresar a la lista",
            style: TextStyle(fontSize: 20),
          ),
          OutlinedButton(
              child: Icon(Icons.close),
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return VistaMedicina();
                  }))),
        ],
      ),
    )));
  }
}



/*
class _MedicinaDetalleState extends State<MedicinaDetalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "Medicina",
              child: FadeInImage.assetNetwork(
                placeholder: "",
                image: ""),
            ),
            SizedBox(
              height: 30
            ),
           OutlinedButton(
                child: Icon(Icons.close),
                onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return VistaMedicina();
                    })))
          ],
        ),
      ),
    );
  }
}
*/