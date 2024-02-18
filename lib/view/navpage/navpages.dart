// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tachiyomi_clone/view/extensionscreen/extensiscreen.dart';
import 'package:tachiyomi_clone/view/historyscreen/historyscreen.dart';
import 'package:tachiyomi_clone/view/homescreen/homescreen.dart';
import 'package:tachiyomi_clone/view/morescreen/morescreen.dart';
import 'package:tachiyomi_clone/view/updatescreen/updatescreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedindex = 0;
  List pages = [
    Homescreen(),
    Updatesscreen(),
    Historyscreen(),
    Extnsscrn(),
    Morescrn()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(color: Colors.green),
        showUnselectedLabels: true,
        currentIndex: selectedindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.collections_bookmark,
              color: Colors.grey,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.update,
              color: Colors.grey,
            ),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.new_releases,
              color: Colors.grey,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.grey,
            ),
            label: "Browse",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
            label: "More",
          ),
        ],
      ),
    );
  }
}
