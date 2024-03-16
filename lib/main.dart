import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// types of widgets
// StatelessWidgets   (State will not change imutable)
// StatefullWidgets

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialpage(),
    );
    // Material Design  from google
    // Cupertino Design  from apple
  }
}
