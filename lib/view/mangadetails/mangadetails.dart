import 'package:flutter/material.dart';
import 'package:tachiyomi_clone/utils/dbdata.dart';

class MangaDetails extends StatelessWidget {
  const MangaDetails({
    super.key,
    required this.mangaTitle,
    required this.mangaAuthor,
    required this.mangaDes,
    required this.imagUrl,
    required this.chapter,
    required this.pages,
  });
  final String mangaTitle;
  final String imagUrl;
  final String mangaAuthor;
  final String mangaDes;
  final String chapter;
  final String pages;

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
            Image.asset(
              imagUrl,
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
                    mangaDes,
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
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: Dbdata.chapterData.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(chapter,
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text(
                          pages,
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          // Add navigation or action when a chapter is tapped
                        },
                      );
                    },
                  ),
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
}
