import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.person_circle_outline, color: Colors.white, size: 36),
              SizedBox(width: 8),
              Text('Sobre o App', style: TextStyle(color: Colors.white)),
            ],
          ),
          backgroundColor: Colors.greenAccent.shade400,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // altere o deslocamento conforme necessário
                ),
              ],
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Nome: Thales Augusto Silva Lima"),
                Text("Ra: 12900"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
