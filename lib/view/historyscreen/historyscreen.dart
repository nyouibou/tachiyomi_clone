// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tachiyomi_clone/utils/dbdata.dart';
import 'package:tachiyomi_clone/view/historyscreen/widgets/omhistory.dart';

class Historyscreen extends StatefulWidget {
  const Historyscreen({super.key});

  @override
  State<Historyscreen> createState() => _HistoryscreenState();
}

class _HistoryscreenState extends State<Historyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'History',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.delete_sweep,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: Dbdata.historyManga.length,
        itemBuilder: (context, index) => CustomHistory(
          titles: Dbdata.historyManga[index]["title"]!,
          imageUrls: Dbdata.historyManga[index]["imageUrl"]!,
          language: Dbdata.historyManga[index]["Time"]!,
        ),
      ),
    );
  }
}
