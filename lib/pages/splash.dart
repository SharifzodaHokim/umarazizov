import 'package:exsam1/pages/home_page.dart';
import 'package:exsam1/pages/login.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class SplashPage extends StatefulWidget {
    const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashpageState();
}

class _SplashpageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    goToNextPage();
  }

  goToNextPage() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return  
    
 
       Scaffold(
        
        backgroundColor: Color(0xFF1780C2),
      body: Center(
        
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
              Text("Umar ",
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
              ),
                Text("Azizov ",
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
                ),
          ],
        ), 
        
      
          
       
        
      ),
    
      
    );
  }
}

