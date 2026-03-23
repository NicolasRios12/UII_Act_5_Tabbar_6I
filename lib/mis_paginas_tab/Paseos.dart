import 'package:flutter/material.dart';

class PaseosPage extends StatelessWidget {
  const PaseosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        'https://raw.githubusercontent.com/NicolasRios12/imagenes-para-flutter-6I-fecha-11-feb-2026/refs/heads/main/pog2.png',
        width: 300,
      ),
    );
  }
}