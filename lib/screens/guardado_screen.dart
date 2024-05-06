import 'package:flutter/material.dart';
import 'package:innovatec/src/widgets/header_widget.dart';

class GuardadoScreen extends StatelessWidget {
  const GuardadoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderWidget(),
            SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Aun no tienes ningún restaurante guardado', style: TextStyle(fontSize: 30, color: Colors.grey),),
            ),
          ],
        ),
      ),
    );
  }
}