import 'package:flutter/material.dart';

class AppThemes{
  static final Color primaryColor =  Color(0xffB7935F) ;
  static final Color darkPrimaryColor =  Color(0xff141A2E) ;



  static final Color darkSecondaryyColor =  Color(0xffFACC1D) ;
  static ThemeData lightTheme = ThemeData(
    cardColor: Colors.white,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 30,
          fontFamily: "Missiri"
      ),
      titleMedium: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 25,
          fontFamily: "Missiri"
      ),
      bodyLarge: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 25,
          fontFamily: "Missiri"
      ),
      bodyMedium: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 20,
          fontFamily: "Missiri"
      ),
    ),
    primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(

          backgroundColor: Colors.transparent,
          elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        // titleTextStyle: TextStyle(
        //   color: Colors.black,
        //   fontWeight: FontWeight.w700,
        //   fontSize: 30,
        //   fontFamily: "Missiri"
        // ),

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
  static ThemeData darkTheme = ThemeData(
      cardColor: darkPrimaryColor,

      textTheme: const TextTheme(
      titleLarge: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 30,
          fontFamily: "Missiri"
      ),
      titleMedium: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 25,
          fontFamily: "Missiri"
      ),
      bodyLarge: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 25,
          fontFamily: "Missiri"
      ),
      bodyMedium: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 20,
          fontFamily: "Missiri"
      ),
    ),
    primaryColor: darkPrimaryColor,
      appBarTheme: const AppBarTheme(

          backgroundColor: Colors.transparent,
          elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        // titleTextStyle: TextStyle(
        //   color: Colors.black,
        //   fontWeight: FontWeight.w700,
        //   fontSize: 30,
        //   fontFamily: "Missiri"
        // ),

      ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: darkSecondaryyColor,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 35
      )
    ),
    scaffoldBackgroundColor: Colors.transparent

  );
}