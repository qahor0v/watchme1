import 'package:flutter/material.dart';
import 'package:watchme/constants.dart';
import 'package:watchme/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WatchMe',
      theme: ThemeData(
        primarySwatch: MaterialColor(900, {
          50: mainColor,
          100: mainColor,
          200: mainColor,
          300: mainColor,
          400: mainColor,
          500: mainColor,
          600: mainColor,
          700: mainColor,
          800: mainColor,
          900: mainColor,
        }),
      ),
      home: const HomePage(),
    );
  }
}
