import 'package:flutter/material.dart';

class InitErrorScreen extends StatelessWidget {
  const InitErrorScreen(this.error, {super.key});

  final Object error;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Erro ao carregar: $error'),
        ),
      ),
    );
  }
}
