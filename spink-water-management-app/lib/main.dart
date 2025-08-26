import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spink Water Management',
      home: Scaffold(
        appBar: AppBar(title: const Text('Spink Water Management')),
        body: const Center(
          child: Text('Hello, Spink! 🚰'),
        ),
      ),
    );
  }
}
