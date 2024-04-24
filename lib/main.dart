import 'package:flutter/material.dart';
import 'login_screen.dart'; // Importe o arquivo da tela de login

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_super_parameters
  const MyApp({Key? key}) : super(key: key); //A constante

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seu App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(), // Aqui você está usando a tela de login
    );
  }
}
