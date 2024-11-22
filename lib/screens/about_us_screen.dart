import 'package:flutter/material.dart';

void main() {
  runApp(const AboutUsApp());
}

class AboutUsApp extends StatelessWidget {
  const AboutUsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Us - Africa’s Talking Women in Tech',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const AboutUsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/atlogo.png', // Ensure this logo exists
              height: 30, // Adjusted height
              width: 30, // Adjusted width
            ),
            const SizedBox(width: 10), // Spacing between logo and title
            const Text(
              'About Us',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 45, 104, 12),
        centerTitle: false, // Title aligned left with logo
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Introduction Section
              const Text(
                "Welcome to Africa's Talking Women in Technology!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "We are a platform dedicated to empowering women across Africa in the field of technology. Through collaboration, innovation, and education, we aim to bridge the gender gap in tech and provide opportunities for women to excel in this dynamic industry.",
                style: TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Mission Section
              const Text(
                "Our Mission",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "To create a supportive ecosystem that inspires, trains, and empowers women to thrive in technology, unlocking their potential to lead and innovate in Africa's digital transformation.",
                style: TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Vision Section
              const Text(
                "Our Vision",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "A future where African women lead the way in technology, driving economic growth, social progress, and innovation across the continent and beyond.",
                style: TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Values Section
              const Text(
                "Our Core Values",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const ListTile(
                leading: Icon(Icons.check_circle, color: Colors.orange),
                title: Text(
                  "Empowerment: Providing tools and opportunities for women to succeed in tech.",
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.check_circle, color: Colors.orange),
                title: Text(
                  "Innovation: Encouraging creativity and problem-solving to shape the future.",
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.check_circle, color: Colors.orange),
                title: Text(
                  "Collaboration: Building a network of support through partnerships and teamwork.",
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.check_circle, color: Colors.orange),
                title: Text(
                  "Inclusivity: Fostering a diverse and equitable environment for all women.",
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
              const SizedBox(height: 20),

              // Contact Section with Orange Background
              Container(
                color: Colors.orange,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Have questions or want to get involved? Reach out to us at:",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Email: contact@africastalkingwomenintech.org",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Phone: +254 700 000 000",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Footer Section
              Center(
                child: Text(
                  "© 2024 Africa’s Talking Women in Technology. All Rights Reserved.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
