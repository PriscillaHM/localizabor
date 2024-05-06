import 'package:flutter/material.dart';
import 'package:innovatec/src/widgets/header_widget.dart';
import 'package:innovatec/src/widgets/listview_categoria.dart';
import 'package:innovatec/src/widgets/restaurantes.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

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
                  ListViewCategoria(),
                  RestaurantesWidget()
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}