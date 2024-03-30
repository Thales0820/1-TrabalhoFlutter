import 'package:primeiro_trabalho/bloc/calcular_imc.dart';
import 'package:primeiro_trabalho/ui/pages/sobre_page.dart';
import 'package:primeiro_trabalho/ui/widgets/campo_texto.dart';
import 'package:primeiro_trabalho/ui/widgets/menu_lateral.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late List<Map> listaMenu;

  void _abrirSobre() {
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => SobrePage()));
  }

  @override
  Widget build(BuildContext context) {

    final _calcBloc = CalcularImcBloc(context);

    listaMenu = [
      {"Texto": "Sobre", "Clique": _abrirSobre}
    ];

    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calculate_outlined, color :Colors.white, size: 36),
              SizedBox(width: 8),
              Text('IMC', style: TextStyle(color: Colors.white),)
            ],
          ),
          backgroundColor: Colors.greenAccent.shade400
        ),
        drawer: MenuLateral(listaItens: listaMenu),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            _calcBloc.calcular();
          });
        }, child: const Icon(Icons.calculate, size: 34, color: Colors.black),
        backgroundColor: Colors.greenAccent),
        body: Column(
          children: [
            CampoTexto(_calcBloc.pesoController, 'Seu Peso', 'Kg'),
            CampoTexto(_calcBloc.alturaController, 'Sua Altura', 'm'),
            ElevatedButton(onPressed: () { setState(() { _calcBloc.calcular();});
            }, child: const Text('Calcular')),

            Text(_calcBloc.resultado, style: const TextStyle(fontSize: 32),)
          ],
        ),
      ),
    );
  }
}
