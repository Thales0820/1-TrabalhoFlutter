import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MenuLateral extends StatelessWidget {

  final List<Map> listaItens;

  const MenuLateral({required this.listaItens, super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          _criarHeader(),
          _criarListaItens(context)
        ],
      ),
    );
  }

  Widget _criarListaItens(BuildContext context) {
    List<Widget> lista = [];
    for (var item in listaItens) {
      lista.add(ListTile(
        title: Text(item["Texto"]),
        onTap: item["Clique"],
      ));
    }
    return Column(children: lista);
  }

  Widget _criarHeader() {
    return DrawerHeader(
      child: Column(
        children: [
          Icon(Ionicons.barbell_outline, size: 80, color: Colors.greenAccent.shade400,),
          Text('IMC')
        ],
      ),
    );
  }
}