import 'package:flutter/material.dart';
import 'package:ui_test_task/show_case_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Move to showcase screen'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ShowCaseScreen()),
          ),
        ),
      ),
    );
  }
}
