import 'package:flutter/material.dart';
import 'package:innovatec/src/pages/home.dart';
import 'package:innovatec/src/widgets/header_widget.dart';

class DetalleRestauranteScreen extends StatelessWidget {
  const DetalleRestauranteScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [  
            SliverToBoxAdapter(
              child: HeaderWidget(),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                  Detalles()
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}

class Detalles extends StatefulWidget{
  @override
  State<Detalles> createState() => _DetallesState();
}

class _DetallesState extends State<Detalles> {
  bool _isBookmarked = false;
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Image.asset(
              'assets/img/china.jpg',
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('Ocean City', 
                  style: TextStyle(
                    fontSize: 30
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _isBookmarked = !_isBookmarked;
                    });
                  },
                  child: Icon(
                    Icons.bookmark,
                    color: _isBookmarked ? Colors.yellow : Colors.grey, // Cambia el color cuando está activo o inactivo
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _isFavorited = !_isFavorited;
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: _isFavorited ? Colors.red : Colors.grey, // Cambia el color cuando está activo o inactivo
                  ),
                ),
              ],
            )
          ],
        ),
        const Row(
          children: [
            Text('data')
          ],
        )
      ],
    );
  }
}