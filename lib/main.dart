<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:weather_app/weather_screen.dart';
=======
import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';
>>>>>>> 82baff79751aa18ab0710bbaeaddd412f3d60cd8

void main() {
  runApp(const MyApp());
}
<<<<<<< HEAD

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const WeatherScreen(),
    );
=======
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
>>>>>>> 82baff79751aa18ab0710bbaeaddd412f3d60cd8
  }
}
