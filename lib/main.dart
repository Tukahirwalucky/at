import 'package:flutter/material.dart';
//import 'package:women_in_tech/screens/gallery/gallery_page.dart';
import 'package:women_in_tech/screens/gallery/gallery_folder_page.dart';
import 'package:women_in_tech/screens/gallery/folder_images_page.dart'; // Ensure this import is included
import 'package:women_in_tech/screens/wit_comm_screen.dart'; // Import the About Us screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Women in Tech',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/', // Default route
      routes: {
        '/': (context) => const WitCommScreen(), // About Us Page as the default screen
        '/gallery': (context) => const GalleryFolderPage(),
        '/gallery-folder': (context) => const GalleryFolderPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/folder-images') {
          final args = settings.arguments as Map<String, dynamic>?;

          // Ensure arguments are provided and not null
          if (args == null || !args.containsKey('folderName') || !args.containsKey('images')) {
            return MaterialPageRoute(
              builder: (context) => const Scaffold(
                body: Center(child: Text('Error: Missing arguments')),
              ),
            );
          }

          // Extract folderName and images from the arguments
          final folderName = args['folderName'] as String;
          final images = List<String>.from(args['images'] as List<dynamic>);

          // Return the route with FolderImagesPage
          return MaterialPageRoute(
            builder: (context) => FolderImagesPage(
              folderName: folderName,
              images: images,
            ),
          );
        }
        return null; // Return null for undefined routes
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
