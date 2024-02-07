// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBar(
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
        bottomNavigationBar: GNav(
            backgroundColor: const Color.fromARGB(255, 24, 40, 32),
            tabBackgroundColor: Colors.greenAccent,
            gap: 10,
            tabs: [
              GButton(
                icon: Icons.bookmark,
                iconColor: Colors.greenAccent,
                text: "Library",
              ),
              GButton(
                icon: Icons.new_releases,
                iconColor: Colors.greenAccent,
                text: "Updates",
              ),
              GButton(
                icon: Icons.update,
                iconColor: Colors.greenAccent,
                text: "History",
              ),
              GButton(
                icon: Icons.explore,
                iconColor: Colors.greenAccent,
                text: "Extension",
              ),
              GButton(
                icon: Icons.more_horiz,
                iconColor: Colors.greenAccent,
                text: "More",
              ),
            ]));
  }
}
