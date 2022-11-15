import 'package:counter_app/screens/bonus_screen.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      home: BonusScreen()
    );
  }
}