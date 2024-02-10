import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Navigator_bar extends StatefulWidget {
  const Navigator_bar({super.key});

  @override
  State<Navigator_bar> createState() => _Navigator_barState();
}

class _Navigator_barState extends State<Navigator_bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      bottomNavigationBar: CurvedNavigationBar(
          animationDuration: const Duration(milliseconds: 300),
          backgroundColor: Colors.purple,
          items: const [
            Icon(Icons.home),
            Icon(Icons.home),
            Icon(Icons.home),
          ]),
    );
  }
}
