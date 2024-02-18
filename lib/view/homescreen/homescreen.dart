// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tachiyomi_clone/utils/dbdata.dart';
import 'package:tachiyomi_clone/view/homescreen/widgets/customgridlibrary.dart';
import 'package:tachiyomi_clone/view/mangadetails/mangadetails.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
        title: Text(
          'Library',
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
            Icons.filter_list,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: Dbdata.historyManga.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
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

                        // mangaData: Dbdata.historyManga[index],
                      ),
                    ),
                  );
                },
                child: CustomLibraryGrid(
                  title: Dbdata.historyManga[index]["title"]!,
                  imageUrl: Dbdata.historyManga[index]["imageUrl"]!,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
