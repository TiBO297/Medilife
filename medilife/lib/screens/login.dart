
import 'package:carrito/Componentes/Pantallas/principal.dart';
import 'package:carrito/screens/example.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
   MyLogin({Key? key}) : super(key: key);

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bienvenido a medilife',
                style: Theme.of(context).textTheme.headline1,
              ),
             const SizedBox(
                height: 34,
              ),
              TextFormField(
                controller: myController,
                decoration: const InputDecoration(
                  hintText: 'Usuario',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Contraseña',
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: const Text('Entrar'),
                onPressed: () {
                  if(myController.text == "cliente"){
                    Navigator.pushReplacementNamed(context, '/catalog');
                  }else{
                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Principal()),
            );;
                  }
                  
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}