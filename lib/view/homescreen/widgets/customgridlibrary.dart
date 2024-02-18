import 'package:flutter/material.dart';

class CustomLibraryGrid extends StatelessWidget {
  const CustomLibraryGrid(
      {super.key, required this.title, required this.imageUrl});
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}
