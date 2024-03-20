import 'package:flutter/material.dart';
import 'package:anaya0312/pantallas0312/panel0312/panel_pantalla0312.dart';

void main() => runApp(const MiAppWWE());

class MiAppWWE extends StatelessWidget {
  const MiAppWWE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WWE Anaya0312",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true),
      home: const PanelPantalla0312(),
    );
  }
}
