import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/main.dart';
import 'package:flutter_video_streaming/view/watchlist.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});
  static const pageName = "/SettingScreen";

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      appBar: AppBar(
        title: const Text('Setting'),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff101010),
      ),
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Expanded(
                flex: 8,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.35,
                        height: fullHeight * 0.1,
                        child: const FittedBox(
                          child: Text(
                            'GeneralSettings',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.17,
                                height: fullHeight * 0.05,
                                child: const FittedBox(
                                  child: Text(
                                    'Language',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.13,
                                height: fullHeight * 0.02,
                                child: const FittedBox(
                                  child: Text(
                                    'English',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              width: screenWidth * 0.05,
                              height: fullHeight * 0.05,
                              child: const FittedBox(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.17,
                        height: fullHeight * 0.1,
                        child: const FittedBox(
                          child: Text(
                            'Others',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: screenWidth * 0.12,
                            height: fullHeight * 0.1,
                            child: const FittedBox(
                              child: Text(
                                'About',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: screenWidth * 0.05,
                              height: fullHeight * 0.05,
                              child: const FittedBox(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: screenWidth * 0.35,
                            height: fullHeight * 0.1,
                            child: const FittedBox(
                              child: Text(
                                'Terms & Conditions',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: screenWidth * 0.05,
                              height: fullHeight * 0.05,
                              child: const FittedBox(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: screenWidth * 0.26,
                            height: fullHeight * 0.1,
                            child: const FittedBox(
                              child: Text(
                                'Privacy Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: screenWidth * 0.05,
                              height: fullHeight * 0.05,
                              child: const FittedBox(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: screenWidth * 0.11,
                            height: fullHeight * 0.1,
                            child: const FittedBox(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: screenWidth * 0.1,
                              height: fullHeight * 0.1,
                              child: IconButton(
                                  onPressed: () => Navigator.of(context)
                                      .pushNamed(WatchListScreen.pageName),
                                  icon: const FittedBox(
                                      child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  ))))
                        ],
                      ),
                    ])),
            Expanded(flex: 2, child: Container())
          ]),
        ),
      ),
    );
  }
}
