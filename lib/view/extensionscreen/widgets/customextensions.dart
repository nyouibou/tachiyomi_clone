// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomExtensions extends StatelessWidget {
  const CustomExtensions(
      {super.key,
      required this.titles,
      required this.imageUrls,
      required this.language});
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
              height: 76,
              width: 146,
              child: Image.network(
                imageUrls,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 30),
            Column(
              children: [
                Text(
                  titles,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  language,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            Spacer(),
            Text(
              "Latest",
              style: TextStyle(fontSize: 10, color: Colors.green),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.push_pin,
              color: Colors.white,
            ),
            SizedBox(width: 20),
          ],
        ));
  }
}
