import 'package:flutter/material.dart';
import 'package:tachiyomi_clone/view/splashscreen/splashscreen.dart';

void main() {
  runApp(Tachiyomi());
}

class Tachiyomi extends StatelessWidget {
  const Tachiyomi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
