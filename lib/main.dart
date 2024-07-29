import 'package:exsam1/pages/bottomnavigation.dart';
import 'package:exsam1/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home:  SplashPage(),






 

    );
    }
    }

