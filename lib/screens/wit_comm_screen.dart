import 'package:flutter/material.dart';

class WitCommScreen extends StatelessWidget {
  const WitCommScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Women in Tech'),
        backgroundColor: const Color.fromARGB(255, 5, 0, 14),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/gallery');
          },
          child: const Text('Go to Gallery'),
        ),
      ),
    );
  }
}
