import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/controller/customplayscreen.dart';
import 'package:flutter_video_streaming/main.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});
  static const pageName = '/PlayScreen';

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    clientHeight = screenHeight - kToolbarHeight;

    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: const SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color(0xff101010),
              title: Text('PlayScreen'),
            ),
            CustomPlay(),
            PlayScreenList()
          ],
        ),
      ),
    );
  }
}
