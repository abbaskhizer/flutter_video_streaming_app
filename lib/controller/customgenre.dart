import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/main.dart';
import 'package:flutter_video_streaming/model/searchmodel.dart';
import 'package:flutter_video_streaming/view/playscreen.dart';

class CustomGenre extends StatelessWidget {
  const CustomGenre({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return SliverAppBar(
        pinned: true,
        snap: false,
        // floating: false,
        expandedHeight: 120,
        flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Row(
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

class GenreGrid extends StatefulWidget {
  const GenreGrid({super.key});

  @override
  State<GenreGrid> createState() => _GenreGridState();
}

class _GenreGridState extends State<GenreGrid> {
  List<SearchModel> model = [
    SearchModel(imagePath: 'assets/images/action.jpg', text: 'Action'),
    SearchModel(imagePath: 'assets/images/adventure.jpeg', text: 'Adventure'),
    SearchModel(imagePath: 'assets/images/animation.jpg', text: 'Animation'),
    SearchModel(imagePath: 'assets/images/biography.jpg', text: 'Biography'),
    SearchModel(imagePath: 'assets/images/comedy.jpeg', text: 'Comedy'),
    SearchModel(imagePath: 'assets/images/drama.jpg', text: 'Drama'),
    SearchModel(imagePath: 'assets/images/family.jpeg', text: 'Family'),
    SearchModel(imagePath: 'assets/images/fantacy.jpeg', text: 'Fantacy'),
    SearchModel(imagePath: 'assets/images/horror.jpeg', text: 'Horror'),
    SearchModel(imagePath: 'assets/images/jungle.jpeg', text: 'Jungle'),
    SearchModel(imagePath: 'assets/images/ramance.jpg', text: 'Romance'),
    SearchModel(imagePath: 'assets/images/action.jpg', text: 'Action'),
    SearchModel(imagePath: 'assets/images/adventure.jpeg', text: 'Adventure'),
    SearchModel(imagePath: 'assets/images/animation.jpg', text: 'Animation'),
    SearchModel(imagePath: 'assets/images/biography.jpg', text: 'Biography'),
    SearchModel(imagePath: 'assets/images/comedy.jpeg', text: 'Comedy'),
    SearchModel(imagePath: 'assets/images/drama.jpg', text: 'Drama'),
    SearchModel(imagePath: 'assets/images/family.jpeg', text: 'Family'),
    SearchModel(imagePath: 'assets/images/fantacy.jpeg', text: 'Fantacy'),
    SearchModel(imagePath: 'assets/images/horror.jpeg', text: 'Horror'),
    SearchModel(imagePath: 'assets/images/jungle.jpeg', text: 'Jungle'),
    SearchModel(imagePath: 'assets/images/ramance.jpg', text: 'Romance')
  ];
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(
            childCount: model.length,
            (context, index) => Center(
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            onTap: () => Navigator.of(context)
                                .pushNamed(PlayScreen.pageName),
                            child: Image.asset(
                              model[index].imagePath,
                              fit: BoxFit.fill,
                              width: screenWidth * 0.46,
                              height: fullHeight * 0.2,
                            ),
                          )),
                      SizedBox(
                          width: screenWidth * 0.5,
                          height: fullHeight * 0.1,
                          child: Center(
                            child: Text(
                              model[index].text,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                )),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.85));
  }
}
