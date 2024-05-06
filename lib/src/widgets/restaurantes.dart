import 'package:flutter/material.dart';
import 'package:innovatec/screens/detalles_restaurante_screen.dart';

class RestaurantesWidget extends StatelessWidget {
  
  const RestaurantesWidget({super.key});
    static const Map<String, String> restaurantes = {
    "Ocean city":'https://editorialtelevisa.brightspotcdn.com/dims4/default/e1434a3/2147483647/strip/true/crop/995x560+3+0/resize/1000x563!/quality/90/?url=https%3A%2F%2Fk2-prod-editorial-televisa.s3.us-east-1.amazonaws.com%2Fbrightspot%2Fwp-content%2Fuploads%2F2020%2F04%2Fcomida-china-tipica.jpg',
    "Ochentos":'https://editorialtelevisa.brightspotcdn.com/dims4/default/552508f/2147483647/strip/true/crop/600x338+0+31/resize/1000x563!/quality/90/?url=https%3A%2F%2Fk2-prod-editorial-televisa.s3.us-east-1.amazonaws.com%2Fbrightspot%2Fwp-content%2Fuploads%2F2021%2F11%2Fcomida-italiana.jpg',
    "Tlaquepaque":'https://editorialtelevisa.brightspotcdn.com/dims4/default/f98dde1/2147483647/strip/true/crop/900x507+0+47/resize/1000x563!/quality/90/?url=https%3A%2F%2Fk2-prod-editorial-televisa.s3.us-east-1.amazonaws.com%2Fbrightspot%2Fwp-content%2Fuploads%2F2021%2F06%2Fcomida-mexicana.jpg',
    "Shirami":'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-48x3eXzwU5IDYuHe7rmaaGh_kjjjMuFJ0J5t2lY7fg&s',
    "Mariscos el Amigo":'https://d1ralsognjng37.cloudfront.net/424236b3-9ccd-4898-ad44-c1fc37dec570.jpeg',
  };

 @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Restaurantes que te recomendamos', 
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'
                  ),
                ),
                Row(
                  children: [
                    for (var restaurante in restaurantes.keys.take(2))
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetalleRestauranteScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                    image: NetworkImage(restaurantes[restaurante]!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(restaurante),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Los mas visitados',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'
                  ),
                ),
                Row(
                  children: [
                    for (var restaurante in restaurantes.keys.take(2))
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetalleRestauranteScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                    image: NetworkImage(restaurantes[restaurante]!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(restaurante),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('La mejor comida mexicana',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'
                  ),
                ),
                Row(
                  children: [
                    for (var restaurante in restaurantes.keys.take(3))
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetalleRestauranteScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                    image: NetworkImage(restaurantes[restaurante]!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(restaurante),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('La mejor comida mexicana', 
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'
                  ),
                ),
                Row(
                  children: [
                    for (var restaurante in restaurantes.keys.take(3))
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetalleRestauranteScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                    image: NetworkImage(restaurantes[restaurante]!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(restaurante),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
  }
}