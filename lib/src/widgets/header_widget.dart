import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff023047),
      height: 80,
      width: double.infinity,
      child: Row(
        children: [
          const SizedBox(width: 10),
          Image.asset(
            'assets/img/logo_localizabor.png',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          const Text('Localizabor', 
           style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins'),
          ),
        ],
      ),
    );
  }
}