import 'package:flutter/material.dart';
import 'package:primeiro_trabalho/ui/pages/home_page.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'IMC',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
