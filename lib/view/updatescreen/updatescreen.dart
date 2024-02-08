import 'package:flutter/material.dart';

class Updatesscreen extends StatefulWidget {
  const Updatesscreen({super.key});

  @override
  State<Updatesscreen> createState() => _UpdatesscreenState();
}

class _UpdatesscreenState extends State<Updatesscreen> {
  final List<MangaUpdate> mangaUpdates = [
    MangaUpdate(
      title: 'Manga Title 1',
      chapter: 'Chapter 25',
      timeAgo: '2 hours ago',
    ),
    MangaUpdate(
      title: 'Manga Title 2',
      chapter: 'Chapter 10',
      timeAgo: 'Yesterday',
    ),
    // Add more manga updates as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Updates',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
          ]),
      body: ListView.builder(
        itemCount: mangaUpdates.length,
        itemBuilder: (context, index) {
          return _buildMangaUpdateItem(mangaUpdates[index]);
        },
      ),
    );
  }

  Widget _buildMangaUpdateItem(MangaUpdate mangaUpdate) {
    return ListTile(
      title: Text(
        mangaUpdate.title,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        '${mangaUpdate.chapter} • ${mangaUpdate.timeAgo}',
        style: TextStyle(color: Colors.grey),
      ),
      onTap: () {
        // Add your onTap logic to navigate to the manga details or reader page
      },
    );
  }
}

class MangaUpdate {
  final String title;
  final String chapter;
  final String timeAgo;

  MangaUpdate({
    required this.title,
    required this.chapter,
    required this.timeAgo,
  });
}
