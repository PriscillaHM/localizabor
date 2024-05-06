import 'package:flutter/material.dart';
import 'package:innovatec/src/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xfff219ebc)),
        useMaterial3: true,
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Poppins')
        )
      ),
      home: const Home()
    );
  }
}
