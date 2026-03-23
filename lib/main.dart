import 'package:flutter/material.dart';
import 'package:myapp/mis_paginas_tab/Guarderia.dart';
import 'package:myapp/mis_paginas_tab/Hospedaje.dart';
import 'package:myapp/mis_paginas_tab/Mascota.dart';
import 'package:myapp/mis_paginas_tab/Paseos.dart';
import 'package:myapp/mis_paginas_tab/Perfil.dart';


void main() => runApp(const DogClubApp());

class DogClubApp extends StatelessWidget {
  const DogClubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog Club',
      
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF0F4F8), // Fondo solicitado
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1976D2), // AppBar
          foregroundColor: Colors.white,
        ),
      ),
      home: const MainNavigation(),
      
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  // Lista de pantallas
  final List<Widget> _paginas = [
    const GuarderiaPage(),
    const HospedajePage(),
    const PaseosPage(),
    const PerfilPage(),
    const MascotaPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog Club'),
        centerTitle: true,
        leading: const Icon(
        Icons.pets, 
        color: Colors.white, // Resalta sobre el azul de la AppBar
      ),
      ),
      body: _paginas[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Necesario para 5 items
        backgroundColor: const Color(0xFFBBDEFB), // Footer / Acentos
        selectedItemColor: const Color(0xFF0D47A1), // Botones (Seleccionado)
        unselectedItemColor: const Color(0xFF1976D2), // Iconos (No seleccionado)
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Guardería'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Hospedaje'),
          BottomNavigationBarItem(icon: Icon(Icons.directions_walk), label: 'Paseos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          BottomNavigationBarItem(icon: Icon(Icons.pets_outlined), label: 'Mascota'),
        ],
      ),
    );
  }
}