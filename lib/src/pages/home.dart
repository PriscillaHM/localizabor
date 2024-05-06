import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:innovatec/src/pages/registrarse.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/logo_localizabor_blanco.png',
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
            const Text('Localizabor', style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),),
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
              width: 300, // Ancho personalizado del TextField
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
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
                child: const Text('Iniciar sesión', textAlign: TextAlign.center,),
              ), 
              onPressed: (){}
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('¿Aún no tienes cuenta?'),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegistrarsePage(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Registrate',
                      style: TextStyle(
                        color: Color(0xfff023047),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ) 
              ],
            ),
          ],
        ),
      )
    );
  }
}