import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/main.dart';
import '../controller/customprofile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static const pageName = "/ProfileScreen";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    clientHeight = screenHeight - kToolbarHeight;
    bottomHeight = screenHeight - kBottomNavigationBarHeight;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          const Color(0xff2b2823).withOpacity(0.2),
                          BlendMode.color),
                      image: const AssetImage('assets/images/backs.jpg'),
                      fit: BoxFit.fill)),
              child: Column(children: const [
                Expanded(flex: 3, child: CustomProfile()),
                Expanded(flex: 3, child: CustomsPrfile()),
                Expanded(flex: 3, child: CustoProfile())
              ])),
        ),
      ),
    );
  }
}
