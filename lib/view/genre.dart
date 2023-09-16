import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/controller/customgenre.dart';
import 'package:flutter_video_streaming/main.dart';

class GenreScreen extends StatefulWidget {
  const GenreScreen({super.key});
  static const pageName = "/GenreScreen";
  @override
  State<GenreScreen> createState() => _GenreScreenState();
}

class _GenreScreenState extends State<GenreScreen> {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;

    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: const CustomScrollView(slivers: [CustomGenre(), GenreGrid()]),
    );
  }
}
