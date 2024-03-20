import 'package:flutter/material.dart';
import 'package:gonzalez0363/pantallas0363/panel0363/panel_pantalla0363.dart';

void main() => runApp(const MiAppBellezaOrganica0363());

class MiAppBellezaOrganica0363 extends StatelessWidget {
  const MiAppBellezaOrganica0363({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Belleza Organica Gonzalez0363",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xfff22dc1)),
          useMaterial3: true),
      home: const PanelPantalla0363(),
    );
  }
}
