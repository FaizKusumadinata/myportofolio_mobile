import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Myportofolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue, secondary: const Color.fromARGB(255, 83, 152, 199)),
        scaffoldBackgroundColor: const Color.fromARGB(223, 12, 6, 6),
        useMaterial3: true,
      ),
      home:MyHomePage(),
    );
  }
}


