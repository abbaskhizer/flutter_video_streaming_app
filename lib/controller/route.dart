import 'package:flutter/material.dart';
import 'package:flutter_video_streaming/controller/mywidget.dart';
import 'package:flutter_video_streaming/main.dart';
import 'package:flutter_video_streaming/view/genre.dart';
import 'package:flutter_video_streaming/view/home.dart';
import 'package:flutter_video_streaming/view/playscreen.dart';
import 'package:flutter_video_streaming/view/profile.dart';
import 'package:flutter_video_streaming/view/search.dart';
import 'package:flutter_video_streaming/view/setting.dart';
import 'package:flutter_video_streaming/view/watchlist.dart';

Route onGenerateRoute(RouteSettings settings) {
  if (settings.name == SplashScreen.pageName) {
    return MaterialPageRoute(
      builder: (context) => const SplashScreen(),
    );
  } else if (settings.name == ProfileScreen.pageName) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const ProfileScreen(),
      transitionDuration: const Duration(seconds: 1),
      reverseTransitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          SlideTransition(
        position: animation.drive(
            Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero)),
        child: child,
      ),
    );
  } else if (settings.name == MainWidget.pageName) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const MainWidget(),
      transitionDuration: const Duration(seconds: 1),
      reverseTransitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          SlideTransition(
        position: animation.drive(
            Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero)),
        child: child,
      ),
    );
  } else if (settings.name == HomeScreen.pageName) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const HomeScreen(),
      transitionDuration: const Duration(seconds: 1),
      reverseTransitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          SlideTransition(
        position: animation
            .drive(Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)),
        child: child,
      ),
    );
  } else if (settings.name == SearchScreen.pageName) {
    return MaterialPageRoute(
      builder: (context) => const SearchScreen(),
    );
  } else if (settings.name == GenreScreen.pageName) {
    return MaterialPageRoute(
      builder: (context) => const GenreScreen(),
    );
  } else if (settings.name == WatchListScreen.pageName) {
    return MaterialPageRoute(
      builder: (context) => const WatchListScreen(),
    );
  } else if (settings.name == PlayScreen.pageName) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const PlayScreen(),
      transitionDuration: const Duration(seconds: 1),
      reverseTransitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  } else {
    return MaterialPageRoute(
      builder: (context) => const SettingScreen(),
    );
  }
}
