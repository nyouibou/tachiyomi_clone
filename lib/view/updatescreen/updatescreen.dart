import 'package:flutter/material.dart';
import 'package:tachiyomi_clone/utils/dbdata.dart';
import 'package:tachiyomi_clone/view/mangadetails/mangadetails.dart';
import 'package:tachiyomi_clone/view/updatescreen/widgets/customupdates.dart';

class Updatesscreen extends StatefulWidget {
  const Updatesscreen({super.key});

  @override
  State<Updatesscreen> createState() => _UpdatesscreenState();
}

class _UpdatesscreenState extends State<Updatesscreen> {
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
        ],
      ),
      body: ListView.builder(
        itemCount: Dbdata.updatesData.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MangaDetails(
                  mangaTitle: Dbdata.mangaData[index]["mangaTitle"]!,
                  mangaAuthor: Dbdata.mangaData[index]["mangaAuthor"]!,
                  mangaDes: Dbdata.mangaData[index]["mangaDescription"]!,
                  imagUrl: Dbdata.mangaData[index]["imageUrl"]!,
                  chapter: Dbdata.chapterData[index]["chapter"]!,
                  pages: Dbdata.chapterData[index]["pages"]!,
                ),
              ),
            );
          },
          child: CustomUpdates(
            imageUrls: Dbdata.updatesData[index]["imageUrl"]!,
            titles: Dbdata.updatesData[index]["title"]!,
            time: Dbdata.updatesData[index]["Time"]!,
          ),
        ),
      ),
    );
  }
}
