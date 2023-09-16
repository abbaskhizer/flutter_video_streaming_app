import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/main.dart';

class CustomHome extends StatelessWidget {
  const CustomHome({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return SliverAppBar(
        pinned: true,
        snap: false,
        floating: false,
        expandedHeight: 180,
        flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            background: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: screenWidth * 0.15,
                  height: fullHeight * 0.03,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.black),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      onPressed: () {},
                      child: const FittedBox(
                        child: Text(
                          'Home',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff921920)),
                        ),
                      )),
                ),
                SizedBox(
                  width: screenWidth * 0.15,
                  height: fullHeight * 0.03,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.black),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      onPressed: () {},
                      child: const FittedBox(
                        child: Text(
                          'Movies',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )),
                ),
                SizedBox(
                  width: screenWidth * 0.17,
                  height: fullHeight * 0.03,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.black),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      onPressed: () {},
                      child: const FittedBox(
                        child: Text(
                          'TvShows',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )),
                ),
                SizedBox(
                  width: screenWidth * 0.15,
                  height: fullHeight * 0.03,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.black),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      onPressed: () {},
                      child: const FittedBox(
                        child: Text(
                          'Videos',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      )),
                ),
              ],
            )),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff101010),
        title: Row(
          children: const [
            Text(
              'S',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff921920)),
            ),
            Text(
              'STREAMIT',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff921920)),
            )
          ],
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/profile.png',
            ),
          ),
        ]);
  }
}

class SliverHome extends StatelessWidget {
  const SliverHome({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return SliverToBoxAdapter(
      child: Image.asset(
        'assets/images/musics.gif',
        fit: BoxFit.fill,
        width: screenWidth * 0.6,
        height: fullHeight * 0.3,
      ),
    );
  }
}
