// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Historyscreen extends StatefulWidget {
  const Historyscreen({super.key});

  @override
  State<Historyscreen> createState() => _HistoryscreenState();
}

class _HistoryscreenState extends State<Historyscreen> {
  final List<String> historyItems = [
    "Chronicles of Celestial Echo",
    "Whispers of the Forgotten Realm",
    "Ephemeral Serenade",
    "Requiem for the Crimson Moon",
    "Labyrinth of Luminous Shadows",
    "Stardust Symphony",
    "Sorcerer's Embrace",
    "Moonlit Mirage",
    "Silent Blossoms of the Eternal Sakura",
    "Crimson Sky Chronicles",
    "Eternal Alchemy",
    "Whirlwind of Whispering Sands",
    "Oracle's Veil",
    "Celestial Melody",
    "Shadows of the Enchanted Lantern"
  ];
  final List<String> chaptorItems = [
    'Chapter 114',
    'Chapter 50',
    'Chapter 29',
    'Chapter 29',
    'Chapter 29',
    'Chapter 29',
    'Chapter 29',
    'Chapter 29',
    'Chapter 29',
    'Chapter 29',
    'Chapter 29',
    'Chapter 29',
    'Chapter 29',
    'Chapter 29',
    'Chapter 29',
    'Chapter 29',
  ];
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
        itemCount: historyItems.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.black,
                  child: Text(
                    '  Today',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _buildHistoryItem(index),
              ],
            );
          } else {
            return _buildHistoryItem(index);
          }
        },
      ),
    );
  }

  Widget _buildHistoryItem(int index) {
    return ListTile(
      title: Text(
        historyItems[index],
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        chaptorItems[index],
        style: TextStyle(color: Colors.white),
      ),
      leading: Image.network(
        'https://via.placeholder.com/50',
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      trailing: Icon(Icons.delete),
      onTap: () {},
    );
  }
}
