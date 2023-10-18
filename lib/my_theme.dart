import 'package:flutter/material.dart';

class MyTheme {
  static Color primarylight = const Color(0xff5D9CEC);
  static Color backgroundlight = const Color(0xffDFECDB);
  static Color greenColor = const Color(0xff61E757);
  static Color redColor = const Color(0xffEC4B4B);
  static Color blackColor = const Color(0xff383838);
  static Color whiteColor = const Color(0xffffffff);
  static Color backgroundDark = const Color(0xff060E1E);
  static Color darkBlack = const Color(0xff141922);
  static Color greyColor = const Color(0xff9494a8);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primarylight,
    scaffoldBackgroundColor: backgroundlight,
    appBarTheme: AppBarTheme(
      backgroundColor: primarylight,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primarylight,
      unselectedItemColor: greyColor,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primarylight,
      shape: StadiumBorder(
        side: BorderSide(color: MyTheme.whiteColor, width: 6),
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
      titleMedium: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleSmall: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}
