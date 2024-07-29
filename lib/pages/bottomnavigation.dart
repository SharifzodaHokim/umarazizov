import 'package:exsam1/large20.dart';
import 'package:exsam1/pages/chat.dart';
import 'package:exsam1/pages/courses.dart';
import 'package:exsam1/pages/day1.dart';
import 'package:exsam1/pages/home_page.dart';

import 'package:exsam1/pages/istoriya2.dart';
import 'package:exsam1/pages/name.dart';
import 'package:exsam1/pages/name1.dart';
import 'package:exsam1/pages/onlinecons.dart';
import 'package:exsam1/pages/post.dart';
import 'package:flutter/material.dart';


class Bottomnavigation extends StatefulWidget {
   Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _selectedIndex = 0;
  
  selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> sahifaho = [
     HomePage(),
     Post(),
   Name1(),
     Chat(),
     Day1(),

  ];

  @override
  Widget build(BuildContext context) {
    return 
  
       Scaffold(
        
        body: sahifaho[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: selectPage,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Главная"),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_fill_outlined),label: "Подписки"),
            BottomNavigationBarItem(icon: Icon(Icons.layers), label: "Курсы"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "Консультация"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профиль"),
          ],
        ),
      );
    
  }
}
