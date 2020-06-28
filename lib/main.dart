import 'package:flutter/material.dart';
import 'screens/thermometer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      color: Colors.blue[200],
//      theme: dark,
    home: Thermometer(),
    );
  }
}

