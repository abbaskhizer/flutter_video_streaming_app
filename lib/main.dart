import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_video_streaming/controller/route.dart';
import 'package:flutter_video_streaming/view/profile.dart';

late Size screenSize;
late double screenHeight, screenWidth, clientHeight, bottomHeight, fullHeight;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.pageName,
      onGenerateRoute: onGenerateRoute,
      // home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });
  static const pageName = '/SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  static final tween = Tween<double>(begin: 0, end: 1);
  // late Timer _timer;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 7));
    _animation = tween.animate(_controller);
    setState(() {
      _controller.forward().whenComplete(() =>
          Navigator.of(context).pushReplacementNamed(ProfileScreen.pageName));
      // () {});
    });
  }

  @override
  void dispose() {
    // _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    clientHeight = screenHeight - kToolbarHeight;
    bottomHeight = screenHeight - kBottomNavigationBarHeight;
    fullHeight = screenHeight - kToolbarHeight - kBottomNavigationBarHeight;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff262626),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
