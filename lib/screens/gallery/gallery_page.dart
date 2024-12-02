import 'package:flutter/material.dart';

class GalleryFolderPage extends StatelessWidget {
  final List<String> images;

  // Constructor to receive the image list
  const GalleryFolderPage({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery Folder'),
        backgroundColor: Color.fromARGB(255, 4, 112, 22),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                images[index],  // Display image from passed list
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
