import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:women_in_tech/screens/gallery/folder_images_page.dart'; // Ensure FolderImagesPage is imported

class GalleryFolderPage extends StatelessWidget {
  const GalleryFolderPage({super.key});

  final Map<String, List<String>> imageCategories = const {
    'Summit': [
      'assets/images/summit/image1.jpg',
      'assets/images/summit/image2.jpg',
      'assets/images/summit/image4.jpg',
    ],
    'Hackathon': [
      'assets/images/hackathons/hackathon4.jpg',
      'assets/images/hackathons/hackathon2.jpg',
      'assets/images/hackathons/hackathon3.jpg',
    ],
    'Session': [
      'assets/images/sessions/session1.jpg',
      'assets/images/sessions/session2.jpg',
      'assets/images/sessions/session3.jpg',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0C2939),
        title: const Text('Gallery Categories', style: TextStyle(fontSize: 24)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Enable horizontal scrolling
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the boxes horizontally
          children: imageCategories.entries.map((entry) {
            final folderName = entry.key;
            final images = entry.value;

            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/folder-images',
                  arguments: {
                    'folderName': folderName,
                    'images': images, // Pass the entire list of images
                  },
                );
              },
              child: Container(
                width: 250, // Increased the width of each folder box
                height: 250, // Increased the height of each folder box to make them bigger
                margin: const EdgeInsets.symmetric(horizontal: 12.0), // Adjusted horizontal margin for spacing
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            images[0], // Display the first image in the folder
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity, // Ensure the image fills the full box
                          ),
                        ),
                      ),
                      const SizedBox(height: 10), // Increased the spacing between the image and text
                      Text(
                        folderName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18, // Increased font size for better readability
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
