







import 'package:exsam1/pages/home_page.dart';
import 'package:flutter/material.dart';
void main(){
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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

