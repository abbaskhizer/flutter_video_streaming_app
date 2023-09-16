import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/controller/mywidget.dart';
import 'package:flutter_video_streaming/main.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    clientHeight = screenHeight - kToolbarHeight;
    bottomHeight = screenHeight - kBottomNavigationBarHeight;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //   width: screenWidth * 0.1,
          //   height: screenHeight * 0.1,
          // ),
          SizedBox(
            width: screenWidth * 0.06,
            height: screenHeight * 0.1,
            child: const FittedBox(
              child: Text(
                'S',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff921920)),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.3,
            height: screenHeight * 0.1,
            child: const FittedBox(
              child: Text(
                'STREAMIT',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff921920)),
              ),
            ),
          )
        ]);
  }
}

class CustomsPrfile extends StatelessWidget {
  const CustomsPrfile({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    clientHeight = screenHeight - kToolbarHeight;
    bottomHeight = screenHeight - kBottomNavigationBarHeight;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: screenWidth * 0.6,
            height: screenHeight * 0.1,
            child: const FittedBox(
              child: Text(
                'Welcome to STREAMIT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.7,
            height: screenHeight * 0.1,
            child: const FittedBox(
              child: Text(
                'Look back and reflect on your memories and\ngrowth over time ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ]);
  }
}

class CustoProfile extends StatelessWidget {
  const CustoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    clientHeight = screenHeight - kToolbarHeight;
    bottomHeight = screenHeight - kBottomNavigationBarHeight;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      SizedBox(
        width: screenWidth * 0.3,
        height: screenHeight * 0.01,
      ),
      SizedBox(
        width: screenWidth * 0.7,
        height: screenHeight * 0.06,
        child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0xffe80810))),
            onPressed: () =>
                Navigator.of(context).pushNamed(MainWidget.pageName),
            child: const FittedBox(
              child: Text(
                'Get Started',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )),
      ),
    ]);
  }
}
