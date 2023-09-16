import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/main.dart';
import 'package:flutter_video_streaming/view/genre.dart';
import 'package:flutter_video_streaming/view/home.dart';
import 'package:flutter_video_streaming/view/search.dart';
import 'package:flutter_video_streaming/view/setting.dart';
import 'package:flutter_video_streaming/view/watchlist.dart';

class MainWidget extends StatefulWidget {
  static int index = 0;
  const MainWidget({super.key});
  static const pageName = "/MainWidget";

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return Scaffold(
      body: IndexedStack(
        index: MainWidget.index,
        children: const [
          HomeScreen(),
          SearchScreen(),
          GenreScreen(),
          WatchListScreen(),
          SettingScreen()
        ],
      ),
      bottomNavigationBar: bottomnavigation(context),
    );
  }

  Container bottomnavigation(BuildContext context) {
    return Container(
      height: fullHeight * 0.12,
      width: screenWidth,
      decoration: const BoxDecoration(
        color: Color(0xff101010),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    MainWidget.index = 0;
                  });
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                )),
            const Text(
              'Home',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    MainWidget.index = 1;
                  });
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            const Text(
              'Search',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    MainWidget.index = 2;
                  });
                },
                icon: const Icon(
                  Icons.graphic_eq_rounded,
                  color: Colors.white,
                )),
            const Text(
              'Genre',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    MainWidget.index = 3;
                  });
                },
                icon: const Icon(
                  Icons.live_tv_sharp,
                  color: Colors.white,
                )),
            const Text(
              'Watchlist',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    MainWidget.index = 4;
                  });
                },
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                )),
            const Text(
              'Setting',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        )
      ]),
    );
  }
}
