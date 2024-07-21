import 'package:flutter/material.dart';

class AppThemes{
  static final Color primaryColor = Color(0xffB7935F) ;
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(

          backgroundColor: Colors.transparent,
          elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 30,

        ),

      ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 35
      )
    ),
    scaffoldBackgroundColor: Colors.transparent

  );
}