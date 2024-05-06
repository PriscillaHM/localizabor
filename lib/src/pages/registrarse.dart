import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:innovatec/src/pages/aplicacion.dart';

class RegistrarsePage extends StatefulWidget {
  const RegistrarsePage({super.key});

  @override
  State<RegistrarsePage> createState() => _RegistrarsePageState();
}

class _RegistrarsePageState extends State<RegistrarsePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/logo_localizabor_blanco.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
              const Text('Localizabor', style: TextStyle(fontSize: 25, fontFamily: 'Poppins'),),
              const SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText:'Nombre de usuario',
                  ), 
                ),
              ),
              const SizedBox(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText:'Correo electrónico',
                  ), 
                ),
              ),
              const SizedBox(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText:'Contraseña',
                  ), 
                ),
              ),
              const SizedBox(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText:'Confirmar contraseña',
                  ), 
                ),
              ),
              CupertinoButton(
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: const BoxDecoration( 
                    color: Color(0xfff8ecae6),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                   ),
                  width: 200,
                  height: 50,
                  child: const Text('Registrarse', textAlign: TextAlign.center,),
                ), 
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AplicacionPage(),
                    ),
                  );
                }
              ),
            ],
          ),
        ),
      )
    );
  }
}