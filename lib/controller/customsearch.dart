import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/main.dart';
import 'package:flutter_video_streaming/model/searchmodel.dart';
import 'package:flutter_video_streaming/view/playscreen.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return SliverAppBar(
      title: const Text('Search'),
      backgroundColor: const Color(0xff101010),
      automaticallyImplyLeading: false,
      expandedHeight: 120,
      pinned: true,
      snap: false,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Container(
          width: screenWidth,
          height: fullHeight * 0.05,
          decoration: const BoxDecoration(color: Color(0xff2c2d31)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'Search movies,tvshows,videos',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                ),
                Icon(
                  Icons.keyboard_voice_outlined,
                  size: 15,
                  color: Colors.red,
                )
              ]),
        ),
      ),
    );
  }
}

class SearchGrid extends StatefulWidget {
  const SearchGrid({super.key});

  @override
  State<SearchGrid> createState() => _SearchGridState();
}

class _SearchGridState extends State<SearchGrid> {
  List<SearchModel> search = [
    SearchModel(imagePath: 'assets/images/xmen.jpeg', text: 'x-men'),
    SearchModel(
        imagePath: 'assets/images/worldworrior.jpeg',
        text: 'The World Worrior'),
    SearchModel(
        imagePath: 'assets/images/shadowworrior.jpeg', text: 'Shadow Worrior'),
    SearchModel(
        imagePath: 'assets/images/revengeworrior.jpg', text: 'Revenge Worrior'),
    SearchModel(imagePath: 'assets/images/narnia.jpg', text: 'Narnia'),
    SearchModel(imagePath: 'assets/images/logan.jpg', text: 'Logan'),
    SearchModel(imagePath: 'assets/images/jungle.jpeg', text: 'Jungle'),
    SearchModel(
        imagePath: 'assets/images/greatemperor.jpeg', text: 'Great Emperor'),
    SearchModel(
        imagePath: 'assets/images/ghostfamily.jpeg', text: 'Ghost Family'),
    SearchModel(imagePath: 'assets/images/xmen.jpeg', text: 'x-men'),
    SearchModel(
        imagePath: 'assets/images/worldworrior.jpeg',
        text: 'The World Worrior'),
    SearchModel(
        imagePath: 'assets/images/shadowworrior.jpeg', text: 'Shadow Worrior'),
    SearchModel(
        imagePath: 'assets/images/revengeworrior.jpg', text: 'Revenge Worrior'),
    SearchModel(imagePath: 'assets/images/narnia.jpg', text: 'Narnia'),
    SearchModel(imagePath: 'assets/images/logan.jpg', text: 'Logan'),
    SearchModel(imagePath: 'assets/images/jungle.jpeg', text: 'Jungle'),
    SearchModel(
        imagePath: 'assets/images/greatemperor.jpeg', text: 'Great Emperor'),
    SearchModel(
        imagePath: 'assets/images/ghostfamily.jpeg', text: 'Ghost Family')
  ];
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(
            childCount: search.length,
            (context, index) => Center(
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            onTap: () => Navigator.of(context)
                                .pushNamed(PlayScreen.pageName),
                            child: Image.asset(
                              search[index].imagePath,
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
                              search[index].text,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                )),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.8));
  }
}
