import 'package:flutter/material.dart';
import 'package:women_in_tech/screens/about_us_screen.dart'; // Import the About Us screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AboutUsPage(), // Set the About Us page as the home screen
      debugShowCheckedModeBanner: false, // Disable debug banner
    );
  }
}
