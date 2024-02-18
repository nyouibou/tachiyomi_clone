import 'package:flutter/material.dart';
import 'package:tachiyomi_clone/utils/dbdata.dart';
import 'package:tachiyomi_clone/view/extensionscreen/widgets/customextensions.dart';

class Extnsscrn extends StatefulWidget {
  const Extnsscrn({super.key});

  @override
  State<Extnsscrn> createState() => _ExtnsscrnState();
}

class _ExtnsscrnState extends State<Extnsscrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Extensions',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: Dbdata.installedExtensions.length,
          itemBuilder: (context, index) => CustomExtensions(
                titles: Dbdata.installedExtensions[index]["title"]!,
                imageUrls: Dbdata.installedExtensions[index]["imageUrl"]!,
                language: Dbdata.installedExtensions[index]["language"]!,
              )),
    );
  }
}
