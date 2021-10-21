import 'package:flutter/material.dart';
import 'package:carrito/Componentes/Pantallas/medicina-carrito/medicinadato.dart';
import 'package:carrito/Componentes/constantes.dart';

String dropdownValue = 'One';

class InfoMedicina extends StatelessWidget {
  const InfoMedicina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            this.buscador(),
            SizedBox(height: 5,),
            this.boton(context)
          ],
        ),
      ),
    );
  }

  Widget buscador() {
    return Column(
      children: <Widget>[
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
                  Icons.search,
                  color: Colors.grey,
                ),
                hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                hintText: "Buscar medicamento"),
          ),
        ),
      ],
    );
  }
/*
  Widget buscador() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 15,
        ),
        Text(
          "Buscar:",
          style: TextStyle(fontSize: 22.0),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
            width: 450.0,
            child: TextField(
              style: TextStyle(fontSize: 22.0, height: 2, color: Colors.black),
            ))
      ],
    );
  }
  */

  Widget boton(BuildContext context) {
    return MaterialButton(
      minWidth: 200.0,
      height: 40.0,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MedicinaDetalle();
                  }));
        
      },
      color: Colors.pink,
      child: Text('Buscar', style: TextStyle(color: Colors.white)),
    );
  }
/*
  Widget clasificador() {
    return DropdownButton<String>(
      
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.pink,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, 
          style: TextStyle(
            fontSize: 20
          ),),
        );
      }).toList(),
    );
  }
  void setState(Null Function() param0) {}
  */
}
