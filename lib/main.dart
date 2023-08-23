import 'package:dice/main_layout.dart';
import 'package:dice/screens/guide.dart';
import 'package:dice/screens/home.dart';
import 'package:dice/screens/play.dart';
import 'package:dice/screens/real_play.dart';
import 'package:dice/screens/statistics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}




class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Confrontation',
      initialRoute: '/',
      routes: {
        '/': (context) =>  MainLayout(page: Home()),
        'guide': (context) =>  MainLayout(page: Guide()),
        'play':  (context) =>  MainLayout(page: Play()),
        'statistics': (context) => MainLayout(page: Statistics()),
        'real-play': (context) => MainLayout(page: RealPlay())
      },
    );
  }
}
