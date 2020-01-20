import 'package:flutter/material.dart';

class Constants{

  //App related strings
  static String appName = "My Travel";


  //Colors for theme
  static Color lightPrimary = Color(0xff1e2037);
  static Color darkPrimary = Color(0xff1e2037);
  static Color lightAccent = Color(0xffcb028a);
  static Color darkAccent = Color(0xffcb028a);
  static Color lightBG = Colors.white;
  static Color darkBG = Colors.black;
  static Color grey = Color(0xffb0b9c2);

  static ThemeData lightTheme = ThemeData(
    fontFamily: "TitilliumWeb",
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor:  lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
//      textTheme: TextTheme(
//        title: TextStyle(
//          color: Colors.white,
//          fontSize: 18.0,
//          fontWeight: FontWeight.w800,
//        ),
//      ),
    ),
  );



  static List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }
}