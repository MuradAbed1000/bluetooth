import 'package:blutooth_freelancer/settings.dart';
import 'package:blutooth_freelancer/splash_screen.dart';
import 'package:flutter/material.dart';

import 'normal.dart';
//import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.white,
          textTheme: ButtonTextTheme.primary,
        ),
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
      // home: SettingsScreen(),
    );
  }
}
