import 'package:flutter/material.dart';

class Hokim extends StatefulWidget {
  const Hokim({super.key});

  @override
  State<Hokim> createState() => _HokimState();
}

class _HokimState extends State<Hokim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hokim sharifzoda",style: TextStyle(fontSize: 30,color: Colors.blue),),
      ),
      body: Column(
        
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
          width: 500,
          ),
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blue,width: 5),
                
                  image: DecorationImage(image: AssetImage("images/hokim.jpg",),fit: BoxFit.cover,),
              
              color: Colors.black,
            ),
            
               
          ),
          SizedBox(
           height: 60,
          ),
          Column(
            children: [
              
              Text("Hakker",style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
              ),),
            ],
          )
        ],
      ),
    );
  }
}