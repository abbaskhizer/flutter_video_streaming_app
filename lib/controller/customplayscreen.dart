import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/main.dart';
import 'package:flutter_video_streaming/model/product.dart';
import 'package:flutter_video_streaming/model/productdetail.dart';

class CustomPlay extends StatelessWidget {
  const CustomPlay({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    clientHeight = screenHeight - kToolbarHeight;
    return SliverToBoxAdapter(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/play.gif',
            fit: BoxFit.fill,
            width: screenWidth * 0.95,
            height: clientHeight * 0.3,
          ),
          SizedBox(
              width: screenWidth * 0.27,
              height: clientHeight * 0.1,
              child: const FittedBox(
                  child: Text(
                'Sand Dust',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ))),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              width: screenWidth * 0.15,
              height: clientHeight * 0.1,
              child: const FittedBox(
                child: Text(
                  'Family',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: screenWidth * 0.5,
                  height: clientHeight * 0.05,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FittedBox(
                              child: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.black,
                          )),
                          FittedBox(
                            child: Text('1864',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                          FittedBox(
                            child: Text('Views',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  width: screenWidth * 0.4,
                  height: clientHeight * 0.05,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black)),
                      onPressed: () {},
                      child: const FittedBox(
                          child: Text('3hr:10mins',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)))),
                )
              ],
            )
          ]),
          SizedBox(
            width: screenWidth * 0.15,
            height: clientHeight * 0.12,
            child: FittedBox(
              child: CircleAvatar(
                backgroundColor: Colors.red.withOpacity(0.1),
                child: const Icon(
                  Icons.settings_applications,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.9,
            height: clientHeight * 0.15,
            child: const Text(
              'The name "film" originally referred to the thin layer of photochemical emulsion[2] on the celluloid strip that used to be the actual medium for recording and displaying motion pictures.',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: screenWidth * 0.4,
                height: clientHeight * 0.05,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Colors.grey.withOpacity(0.5))),
                    onPressed: () {},
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        FittedBox(
                          child: Icon(
                            Icons.heart_broken,
                            color: Colors.red,
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            '45Likes',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    )),
              ),
              SizedBox(
                width: screenWidth * 0.4,
                height: clientHeight * 0.05,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Colors.grey.withOpacity(0.5))),
                    onPressed: () {},
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        FittedBox(
                          child: Icon(
                            Icons.add,
                            color: Colors.red,
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            'MyList',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    )),
              )
            ],
          ),
          SizedBox(
            width: screenWidth * 0.1,
            height: clientHeight * 0.03,
          )
        ],
      ),
    ));
  }
}

class PlayScreenList extends StatefulWidget {
  const PlayScreenList({super.key});

  @override
  State<PlayScreenList> createState() => _PlayScreenListState();
}

class _PlayScreenListState extends State<PlayScreenList> {
  List<DetailProduct> detailProduct = [
    DetailProduct(
        name: 'Upcoming Movies',
        icon: Icons.arrow_forward_ios_outlined,
        listProduct: [
          Product(
              imagePath: 'assets/images/sanddust.jpeg',
              text: 'Sand Dust',
              textName: '3hr:10mins'),
          Product(
              imagePath: 'assets/images/anotherdanger.jpeg',
              text: 'Another Danger',
              textName: '2hr:52mins'),
          Product(
              imagePath: 'assets/images/greatemperor.jpeg',
              text: 'The Great Emperor',
              textName: '2hr:42mins'),
          Product(
              imagePath: 'assets/images/shadow.jpg',
              text: 'Shadow',
              textName: '1hr:58mins'),
          Product(
              imagePath: 'assets/images/revengeworrior.jpg',
              text: 'Revenge Worrior',
              textName: '1hr:30mins'),
          Product(
              imagePath: 'assets/images/officeboss.jpeg',
              text: 'My Office Boss',
              textName: '2hr:38mins')
        ]),
  ];
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    clientHeight = screenHeight - kToolbarHeight;
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: 1,
            (context, index) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8.0),
                          child: SizedBox(
                              width: screenWidth * 0.4,
                              height: clientHeight * 0.04,
                              child: FittedBox(
                                  child: Text(
                                detailProduct[index].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                        ),
                        SizedBox(
                            width: screenWidth * 0.1,
                            height: clientHeight * 0.03,
                            child: FittedBox(
                              child: Icon(detailProduct[index].icon,
                                  color: Colors.white),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: screenWidth * 0.1,
                      height: clientHeight * 0.03,
                    ),
                    SizedBox(
                      width: screenWidth,
                      height: clientHeight * 0.3,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: detailProduct[index].listProduct.length,
                        itemBuilder: (context, innerIndex) {
                          return Container(
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            width: screenWidth * 0.4,
                            height: clientHeight * 0.27,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    detailProduct[index]
                                        .listProduct[innerIndex]
                                        .imagePath,
                                    width: screenWidth * 0.4,
                                    height: clientHeight * 0.15,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      height: clientHeight * 0.06,
                                      child: FittedBox(
                                        child: Text(
                                          detailProduct[index]
                                              .listProduct[innerIndex]
                                              .text,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      height: clientHeight * 0.06,
                                      child: FittedBox(
                                        child: Text(
                                          detailProduct[index]
                                              .listProduct[innerIndex]
                                              .textName,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                )));
  }
}
