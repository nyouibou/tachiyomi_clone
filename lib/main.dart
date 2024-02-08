// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tachiyomi_clone/view/homescreen/navpage/navpages.dart';

void main() {
  runApp(Tachiyomi());
}

class Tachiyomi extends StatelessWidget {
  const Tachiyomi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}
