import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:islamy/ui/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/splash.png'),
          AnimatedSplashScreen(
            nextScreen: HomeScreen(),
            splash: const Text(''),
            backgroundColor: Colors.transparent,
          )
        ],
      ),
    );
  }
}
