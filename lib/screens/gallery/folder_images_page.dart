import 'package:flutter/material.dart';

class FolderImagesPage extends StatelessWidget {
  final String folderName;
  final List<String> images;

  const FolderImagesPage({
    super.key,
    required this.folderName,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 124, 43),
        title: Text('$folderName Images', style: const TextStyle(fontSize: 24)),
      ),
      body: images.isEmpty
          ? const Center(child: Text('No images available.')) // Handle empty list
          : GridView.builder(
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
                    child: SizedBox(
                      width: double.infinity,
                      height: 150.0, // Set the height to make it square-like
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover, // Make the image cover the box area
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
