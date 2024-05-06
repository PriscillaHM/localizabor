import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: const [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(Icons.settings, color: Color(0xfff023047),),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              child: const Stack(
                fit: StackFit.loose ,
                children:[
                  CircleAvatar(
                  child: Icon(
                    Icons.person_2, size: 120,color: Color(0xfff023047),),
                  radius: 70,),
                ] ,
              ),
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text('Susen Ledger', style: TextStyle(fontSize: 25, fontFamily: 'Poppins' ),),
                      Text('Editar perfil')
                    ],
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.favorite_border_outlined, color: Color(0xfff023047),),),
                    Text('Visitados')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.bookmark_border, color: Color(0xfff023047),),),
                    Text('Guardados')
                  ],
                ),
              ],
            ),
        ]),
      )
    );
  }
}