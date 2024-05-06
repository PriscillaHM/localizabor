import 'package:flutter/material.dart';

class ListViewCategoria extends StatelessWidget {
  const ListViewCategoria({super.key});

  static const Map<String, String> categorias = {
    "China":'assets/iconos/arroz.png',
    "Italiana":'assets/iconos/pasta.png',
    "Mexicana":'assets/iconos/taco.png',
    "Japonesa":'assets/iconos/ramen.png',
    "Mariscos":'assets/iconos/mariscos.png',
  };

    @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: categorias.entries.map((entry) {
          final nombreComida = entry.key;
          final imagenComida = entry.value;
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xfff8ecae6),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      imagenComida,
                      width: 40, // Ajusta el tamaño de la imagen según sea necesario
                      height: 40, // Ajusta el tamaño de la imagen según sea necesario
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(nombreComida, style: TextStyle(fontFamily: 'Poppins'),),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
