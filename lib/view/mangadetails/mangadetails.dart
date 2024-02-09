import 'package:flutter/material.dart';

class MangaDetails extends StatefulWidget {
  const MangaDetails({super.key});

  @override
  State<MangaDetails> createState() => _MangaDetailsState();
}

class _MangaDetailsState extends State<MangaDetails> {
  final String mangaTitle = 'Solo Leveling';
  final String mangaAuthor = 'Chugong';
  final String mangaDescription =
      "Ten years ago, 'the Gate' appeared and connected the real world with the realm of magic and monsters. To combat these vile beasts, ordinary people received superhuman powers and became known as 'Hunters.' Twenty-year-old Sung Jin-Woo is one such Hunter, but he is known as the 'World's Weakest,'' owing to his pathetic power compared to even a measly E-Rank. Still, he hunts monsters tirelessly in low-rank Gates to pay for his mother's medical bills.";
  final List<ChapterItem> chapters = [
    ChapterItem('Chapter 1', '12 pages'),
    ChapterItem('Chapter 2', '18 pages'),
    ChapterItem('Chapter 3', '15 pages'),
    ChapterItem('Chapter 3', '15 pages'),
    ChapterItem('Chapter 3', '15 pages'),
    ChapterItem('Chapter 3', '15 pages'),
    ChapterItem('Chapter 3', '15 pages'),
    ChapterItem('Chapter 3', '15 pages'),
    ChapterItem('Chapter 3', '15 pages'),
    ChapterItem('Chapter 3', '15 pages'),
    ChapterItem('Chapter 3', '15 pages'),
    ChapterItem('Chapter 3', '15 pages'),
    ChapterItem('Chapter 3', '15 pages'),
    // Add more chapters as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Icon(
            Icons.download,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.filter_list,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://via.placeholder.com/300', // Manga cover image URL
              height: 200.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mangaTitle,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'by $mangaAuthor',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    mangaDescription,
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Chapters',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 164, 163, 163)),
                  ),
                  SizedBox(height: 8.0),
                  _buildChapterList(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating button pressed');
        },
        child: Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildChapterList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: chapters.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            chapters[index].title,
            selectionColor: Colors.white,
          ),
          subtitle: Text(
            chapters[index].pages,
            selectionColor: Colors.white,
          ),
          onTap: () {
            print('Chapter ${chapters[index].title} tapped');
          },
        );
      },
    );
  }
}

class ChapterItem {
  final String title;
  final String pages;

  ChapterItem(this.title, this.pages);
}
