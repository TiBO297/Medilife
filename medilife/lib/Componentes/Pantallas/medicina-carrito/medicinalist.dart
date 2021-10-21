import 'package:flutter/material.dart';
import 'package:carrito/Componentes/Pantallas/medicina-carrito/medicinadato.dart';
import 'package:carrito/Componentes/constantes.dart';

class MedicinaLista extends StatefulWidget {
  @override
  _MedicinaListaState createState() => _MedicinaListaState();
}

class _MedicinaListaState extends State<MedicinaLista> {
  List<Color> mycolors = [Colors.red, Colors.teal, Colors.black, Colors.green, Colors.red, Colors.teal, Colors.black, Colors.green, Colors.red, Colors.teal, Colors.black, Colors.green];
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /*
            SizedBox(
              height: 250,
              width: 250,
              child: */
              Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3.6,
            width: MediaQuery.of(context).size.width / 2.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child:Image.asset(
                'assets/img/acetaminofe.png',
                fit: BoxFit.cover,
              ),
            ),
          ),

          Positioned(
            right: -10.0,
            bottom: 3.0,
            child: RawMaterialButton(
              onPressed: (){ 
                Navigator.push(
                context, MaterialPageRoute(builder: (context){
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
                  }));;
              },
              fillColor: Colors.white,
              shape: CircleBorder(),
              elevation: 4.0,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.add),
              ),
            ),
          ),
          Positioned(
            right: -10.0,
            bottom: 50.0,
            child: RawMaterialButton(
              onPressed: (){
                Navigator.push(
                context, MaterialPageRoute(builder: (context){
                  return MedicinaDetalle();
                }));
              },
              fillColor: Colors.white,
              shape: CircleBorder(),
              elevation: 4.0,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
          ),
        ],


      ),
              /*
              child: GridView.builder(
                  itemCount: mycolors.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 300),
                  itemBuilder: (context, int index) {
                    /*onTap: (){
                      gotoDetailpage(context, mycolors);
                    }*/
                    return Container(
                      color: mycolors[index],
                    );
                    
                  }),*/
                  
            /*),*/
          ],
        ),
      ),
    );
  }
}

  /*
  gotoDetailpage(BuildContext context, MedicinaLista mycolors){
    Navigator.push(context,
    MaterialPageRoute(builder: 
    (BuildContext context) => MedicinaDetalle(mycolors: mycolors)));
  }
}


class _MedicinaListaState extends State<MedicinaLista> {
  List <Color> mycolors=[Colors.red, Colors.teal, Colors.black];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(

        itemCount:mycolors.length,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisExtent: 10
        ),
        itemBuilder: (context, int index){
          return Container(
            color: Colors.red,
          );
        }
        ),
      );*/