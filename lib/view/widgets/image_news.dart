import 'package:flutter/material.dart';

class ImageNews extends StatelessWidget {
  const ImageNews({super.key, required this.image, this.height = 200});
  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),
      child: Image.network(
        image,
        height: height,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
