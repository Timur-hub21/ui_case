import 'package:flutter/material.dart';
import 'package:ui_test_task/home_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Test',
      home: HomeScreen(),
    );
  }
}
