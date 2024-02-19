// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomHistory extends StatelessWidget {
  const CustomHistory(
      {super.key,
      required this.titles,
      required this.imageUrls,
      required this.language,
      required String title});
  final String titles;
  final String language;
  final String imageUrls;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Row(
          children: [
            Container(
              height: 74,
              width: 74,
              child: Image.network(
                imageUrls,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titles,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.start,
                ),
                Text(language,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                    textAlign: TextAlign.start),
              ],
            ),
            Spacer(),
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            SizedBox(width: 20),
          ],
        ));
  }
}
