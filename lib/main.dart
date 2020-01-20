import 'package:flutter/material.dart';
import 'package:gdg_calavi_ui/screens/main_screen.dart';
import 'package:gdg_calavi_ui/screens/splash.dart';
import 'package:gdg_calavi_ui/util/consts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
//      home: Splash(),
      home: MainScreen(),
    );
  }
}