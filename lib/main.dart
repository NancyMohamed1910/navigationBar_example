import 'package:flutter/material.dart';
import 'package:navigation_bar_example/screen/navigationBar_1.dart';
import 'package:navigation_bar_example/screen/navigationBar_2.dart';
import 'package:navigation_bar_example/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', //my home page
      routes: {
        '/': (context) => MyHome(),
        '/second': (context) => MyNavigationBar1(),
        '/third': (context) => MyNavigationBar2(),
      },
    );
  }
}
