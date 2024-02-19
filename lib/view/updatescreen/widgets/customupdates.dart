import 'package:flutter/material.dart';

class CustomUpdates extends StatelessWidget {
  const CustomUpdates(
      {super.key,
      required this.imageUrls,
      required this.titles,
      required this.time});
  final String imageUrls;
  final String titles;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Row(children: [
          Container(
            height: 76,
            width: 100,
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
              ),
              Text(
                time,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.download_rounded,
            color: Colors.white,
          ),
          SizedBox(width: 20),
        ]));
  }
}
