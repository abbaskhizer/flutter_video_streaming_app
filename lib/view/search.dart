import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/controller/customsearch.dart';
import 'package:flutter_video_streaming/main.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  static const pageName = "/SearchScreen";
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: const SafeArea(
        child: CustomScrollView(slivers: [CustomSearch(), SearchGrid()]),
      ),
    );
  }
}
