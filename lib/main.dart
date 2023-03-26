import 'package:flutter/material.dart';
import 'package:glovo_recreation/MovingContainers/touch_move.dart';
import 'package:glovo_recreation/MovingContainers/util2.dart';
import 'package:glovo_recreation/pages/WelcomePage/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      );
  }
}
