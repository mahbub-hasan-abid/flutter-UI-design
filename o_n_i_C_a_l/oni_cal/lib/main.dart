import 'package:flutter/material.dart';
import 'package:oni_cal/calculator_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Figma Try',
        theme: ThemeData(primarySwatch: Colors.green),
        home: calculatorPage());
  }
}
