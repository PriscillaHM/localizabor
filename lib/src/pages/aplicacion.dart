import 'package:flutter/material.dart';
import 'package:innovatec/screens/burcar_screen.dart';
import 'package:innovatec/screens/guardado_screen.dart';
import 'package:innovatec/screens/inicio_screen.dart';
import 'package:innovatec/screens/perfil_screen.dart';

class AplicacionPage extends StatefulWidget {
  const AplicacionPage({super.key});

  @override
  State<AplicacionPage> createState() => _AplicacionPageState();
}

class _AplicacionPageState extends State<AplicacionPage> {
  int _currentIndex = 0;

  List<Widget> screens = [
    const InicioScreen(),
    const BuscarScreen(),
    const GuardadoScreen(),
    const PerfilScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) => {
          setState(() {
            _currentIndex = index;
          },)
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Color(0xfff023047),),
            label:'Inicio'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Color(0xfff023047),),
            label:'Buscar'),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border,color: Color(0xfff023047),),
            label:'Guardado'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,color: Color(0xfff023047),),
            label:'Perfil'),
        ]
      ),
    );
  }
}