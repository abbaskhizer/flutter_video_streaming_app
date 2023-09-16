import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/main.dart';
import 'package:flutter_video_streaming/view/home.dart';

class CustomWatchList extends StatelessWidget {
  const CustomWatchList({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;

    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return Container(
      width: screenWidth * 0.85,
      color: const Color(0xff31343d).withOpacity(0.9),
      child: Center(
          child: SingleChildScrollView(
        child: Column(

            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'S',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff921920),
                        fontSize: 25),
                  ),
                  Text(
                    'STREAMIT',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff921920),
                        fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                width: screenWidth * 0.1,
                height: fullHeight * 0.03,
              ),
              SizedBox(
                  width: screenWidth * 0.8,
                  height: fullHeight * 0.1,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Enter the email',
                        hintText: 'Email',
                        hintStyle: const TextStyle(color: Colors.white),
                        suffixIcon: const Icon(
                          Icons.mail,
                          color: Colors.red,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  )),
              SizedBox(
                width: screenWidth * 0.1,
                height: fullHeight * 0.03,
              ),
              SizedBox(
                  width: screenWidth * 0.8,
                  height: fullHeight * 0.1,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Enter the password',
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.white),
                        suffixIcon: const Icon(
                          Icons.password,
                          color: Colors.red,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  )),
              SizedBox(
                width: screenWidth * 0.1,
                height: fullHeight * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.31,
                height: fullHeight * 0.1,
                child: const Text(
                  'Forgotpassword?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.6,
                height: fullHeight * 0.07,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.red),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    onPressed: () {
                      Navigator.of(context).pushNamed(HomeScreen.pageName);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
              ),
              SizedBox(
                width: screenWidth * 0.1,
                height: fullHeight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenWidth * 0.41,
                    height: fullHeight * 0.1,
                    child: const Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.25,
                    height: fullHeight * 0.1,
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ),
                ],
              )
            ]),
      )),
    );
  }
}
