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
        bottomNavigationBar: GNav(gap: 20, tabs: [
          GButton(
            icon: Icons.bookmark,
            text: "Library",
          ),
          GButton(
            icon: Icons.new_releases,
            text: "Library",
          ),
          GButton(
            icon: Icons.update,
            text: "Library",
          ),
          GButton(
            icon: Icons.abc,
            text: "Library",
          ),
          GButton(
            icon: Icons.abc,
            text: "Library",
          ),
        ]));
  }
}
