import 'package:flutter/material.dart';
import 'package:recipes_app/screens/recetas_screen.dart';
import 'package:recipes_app/screens/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Historial de Recetas',
      initialRoute: '/',
      routes: {
        '/': (_) => const LoginScreen(),
        '/recetas': (_) => const RecetasScreen(),
      },
    );
  }
}
