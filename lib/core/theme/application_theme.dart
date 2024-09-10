import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static final Color primaryColor =  Color(0xFFB7935F);
  static final Color primaryDarkColor =  Color(0xFFFACC1D);
  static ThemeData lightThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontFamily: 'elmessiri',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
    ),
    primaryColor: primaryColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(

      selectedLabelStyle: TextStyle(
        fontFamily: 'elmessiri',
        fontSize: 16,
      ),
      showUnselectedLabels: false,
      backgroundColor: Color(0xFFB7935F),
      selectedItemColor: Color(0xFF000000),
      selectedIconTheme: IconThemeData(size: 35,color: Color(0xFF000000)),
      unselectedItemColor: Color(0xFFF8F8F8),
      unselectedIconTheme: IconThemeData(size: 25,color: Color(0xFFF8F8F8)),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: 'elmessiri',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
      bodyLarge: TextStyle(
          fontFamily: 'elmessiri',
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.black
      ),
      bodyMedium: TextStyle(
          fontFamily: 'elmessiri',
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Colors.black
      ),
      bodySmall: TextStyle(
          fontFamily: 'elmessiri',
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black
      ),
    ),
    dividerTheme: DividerThemeData(
        color: primaryColor,
        thickness: 3
    ),

  );
  static ThemeData darkThemeData = ThemeData(
    primaryColorDark: primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:  const AppBarTheme(
      centerTitle: true,
      iconTheme: IconThemeData(color: Color(0xFFFACC1D)),
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          fontFamily: 'elmessiri',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFFF8F8F8)
      ),
    ),
    primaryColor: primaryDarkColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(

      selectedLabelStyle: TextStyle(
        fontFamily: 'elmessiri',
        fontSize: 16,
      ),
      showUnselectedLabels: false,
      backgroundColor: Color(0xFF141A2E),
      selectedItemColor: Color(0xFFFACC1D),
      selectedIconTheme: IconThemeData(size: 35,color: Color(0xFFFACC1D)),
      unselectedItemColor: Color(0xFFF8F8F8),
      unselectedIconTheme: IconThemeData(size: 25,color: Color(0xFFF8F8F8)),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: 'elmessiri',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFFF8F8F8)
      ),
      bodyLarge: TextStyle(
          fontFamily: 'elmessiri',
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Color(0xFFF8F8F8)
      ),
      bodyMedium: TextStyle(
          fontFamily: 'elmessiri',
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Color(0xFFF8F8F8)
      ),
      bodySmall: TextStyle(
          fontFamily: 'elmessiri',
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Color(0xFFF8F8F8)
      ),
    ),
    dividerTheme: DividerThemeData(
        color: primaryDarkColor,
        thickness: 3
    ),

  );
}
