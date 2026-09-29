import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Color(0xff1877F2),
      titleTextStyle: TextStyle(
        color: Color(0xffFFFFFF),
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),
    ),
    scaffoldBackgroundColor: Color(0xff202020),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Color(0xffE4E6EB),
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xffE4E6EB),
      ),
      titleSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: Color(0xffE4E6EB),
      ),
    ),
  );
}
