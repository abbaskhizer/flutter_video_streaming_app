import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/controller/customwatchlist.dart';
import 'package:flutter_video_streaming/main.dart';

class WatchListScreen extends StatefulWidget {
  const WatchListScreen({super.key});
  static const pageName = "/WatchlistScreen";
  @override
  State<WatchListScreen> createState() => _WatchListScreenState();
}

class _WatchListScreenState extends State<WatchListScreen> {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xff101010),
        automaticallyImplyLeading: false,
        title: const Text(
          'WatchList',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/watchback.jpeg'),
                  fit: BoxFit.fill)),
          child: Column(children: [
            Expanded(flex: 2, child: Container()),
            const Expanded(flex: 6, child: CustomWatchList()),
            Expanded(flex: 2, child: Container())
          ]),
        ),
      ),
    );
  }
}
