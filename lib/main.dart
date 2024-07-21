import 'package:flutter/material.dart';
import 'package:islamy/themes/app_theme.dart';

import 'package:islamy/ui/home/home_screen.dart';
import 'package:islamy/ui/quraan/sura_details.dart';
import 'package:islamy/ui/splash/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,

      home: SplashScreen(),

    );
  }
}


