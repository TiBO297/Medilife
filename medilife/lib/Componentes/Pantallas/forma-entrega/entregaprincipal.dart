import 'package:carrito/screens/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carrito/Componentes/Pantallas/medicina-carrito/medicinagen.dart';
import 'package:carrito/Componentes/constantes.dart';

class VistaEntrega extends StatefulWidget {
  VistaEntrega({Key? key}) : super(key: key);

  @override
  _VistaEntregaState createState() => _VistaEntregaState();
}

class _VistaEntregaState extends State<VistaEntrega> {
  
  String dropdownValue = 'Metrocentro';
  @override
  Widget build(BuildContext context) {

    final isKeyboard = MediaQuery.of(context).viewInsets.bottom !=0;

    return Scaffold(
        appBar: AppBar(
          title: Text("Forma de Entrega"),
        ),
        resizeToAvoidBottomInset: false,
        body: 
        
      Center(
        child: SingleChildScrollView(
          reverse: true,
            child: Container(
                color: kColorPrimario,
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 1015,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Seleccione la mas conveniente",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlatButton(
                                onPressed: () => {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 100, horizontal: 15),
                                        child: Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    height: 1,
                                                  ),
                                                  TextField(
                                                      decoration: InputDecoration(
                                                          hintText:
                                                              "Ingrese dirección de entrega",
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0)))),
                                                  SizedBox(
                                                    height: 12,
                                                  ),
                                                  TextField(
                                                      decoration: InputDecoration(
                                                          hintText:
                                                              "Referencia Detallada",
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0)))),
                                                  SizedBox(
                                                    height: 12,
                                                  ),
                                                  TextField(
                                                      decoration: InputDecoration(
                                                          hintText:
                                                              "Indicaciones especiales de entrega",
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0)))),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    "Por el momento los pagos se realizaran en Efectivo",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  MaterialButton(
                                                    minWidth: 200.0,
                                                    height: 40.0,
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return AlertDialog(
                                                          title: const Text(
                                                              'Compra exitosa'),
                                                          content:
                                                              SingleChildScrollView(
                                                            child: ListBody(
                                                              children: const <
                                                                  Widget>[
                                                                Text(
                                                                  'Su compra ha sido procesada con exito',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          actions: <Widget>[
                                                            TextButton(
                                                              child: const Text(
                                                                  'Cerrar'),
                                                              onPressed: () {
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) {
                                                                  return MyCatalog();
                                                                }));
                                                              },
                                                            ),
                                                          ],
                                                        );
                                                      }));
                                                    },
                                                    color: Colors.lightGreen,
                                                    child: Text(
                                                        'Procesar Compra',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ],
                                              ),
                                            )));
                                  }))
                                },
                                color: Colors.orange,
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      Icons.delivery_dining_rounded,
                                      size: 40,
                                    ),
                                    Text(
                                      "Entrega a\nDomicilio",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              /*-----------------------------*/
                              FlatButton(
                                onPressed: () => {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 100, horizontal: 15),
                                        child: Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    height: 12,
                                                  ),
                                                  DropdownButton<String>(
                                                    value: dropdownValue,
                                                    icon: const Icon(
                                                        Icons.arrow_drop_down),
                                                    iconSize: 24,
                                                    elevation: 16,
                                                    style: const TextStyle(
                                                        color: Colors.black),
                                                    underline: Container(
                                                      height: 2,
                                                      color: Colors.pink,
                                                    ),
                                                    onChanged:
                                                        (String? newValue) {
                                                      setState(() {
                                                        dropdownValue =
                                                            newValue!;
                                                      });
                                                    },
                                                    items: <String>[
                                                      'Metrocentro',
                                                      'La Gran Via',
                                                      'Plaza Mundo',
                                                      'Unicentro Lourdes'
                                                    ].map<
                                                            DropdownMenuItem<
                                                                String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value,
                                                        child: Text(
                                                          value,
                                                          style: TextStyle(
                                                              fontSize: 20),
                                                        ),
                                                      );
                                                    }).toList(),
                                                  ),
                                                  SizedBox(
                                                    height: 12,
                                                  ),
                                                  TextField(
                                                      decoration: InputDecoration(
                                                          hintText:
                                                              "Ingrese la hora de recojida",
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0)))),
                                                  SizedBox(
                                                    height: 12,
                                                  ),
                                                  TextField(
                                                      decoration: InputDecoration(
                                                          hintText:
                                                              "Indicaciones especiales de entrega",
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0)))),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  MaterialButton(
                                                    minWidth: 200.0,
                                                    height: 40.0,
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return AlertDialog(
                                                          title: const Text(
                                                              'Compra exitosa'),
                                                          content:
                                                              SingleChildScrollView(
                                                            child: ListBody(
                                                              children: const <
                                                                  Widget>[
                                                                Text(
                                                                  'Su compra ha sido procesada con exito',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          actions: <Widget>[
                                                            TextButton(
                                                              child: const Text(
                                                                  'Cerrar'),
                                                              onPressed: () {
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) {
                                                                  return MyCatalog();
                                                                }));
                                                              },
                                                            ),
                                                          ],
                                                        );
                                                      }));
                                                    },
                                                    color: Colors.lightGreen,
                                                    child: Text(
                                                        'Procesar Compra',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ],
                                              ),
                                            )));
                                  }))
                                },
                                color: Colors.orange,
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Icon(
                                      Icons.store,
                                      size: 40,
                                    ),
                                    Text(
                                      "Entrega en\nTienda",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ])))
                
                
                
                
                
                
      ),  
                
                );
  }
}
