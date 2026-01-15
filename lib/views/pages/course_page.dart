import 'package:flutter/material.dart';
class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Page'),
      ),
      body: const Center(
        child: Text('Welcome to the Course Page!'),
      ),
    );
  }
}