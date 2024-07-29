
import 'package:exsam1/pages/Gridview.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  
  List<String> text = [
    "Анатомия",
    "Шиши нав",
    "Дарди шиш",
    "Сутунмухраи качала",
    "Шиш",
    "Анатомия",
  ];
   List<String> imagho = [
    "images/Spine.png",
    "images/image 95.png",
    "images/image 98.png",
   "images/Spine.png",
   "images/image 98.png",
   "images/image 95.png",
  ];



  List day3 = [];
void initState(){
  super.initState();
  func();
}

  
  Future func()async{
    var day1 = await http.get( Uri.parse('https://reqres.in/api/users?page=1'));
    if(day1.statusCode == 200){
      var day2 = json.decode(day1.body);
      setState(() {
        day3 = day2['data']; 
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Курсы",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
          
            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body:  day3.isEmpty? Center(child:CircularProgressIndicator()):     Column(
              children: [
                 Container(
                height: 600,
                   child: GridView.builder(
                    
                                 
                                   gridDelegate: const   SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2
                    ),
                                   itemCount: day3.length,
                                   itemBuilder: (context,index){
                    return Column(
                       children: [
                         Container(
                         height: 176,
                             decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          color: Colors.grey,
                          offset: Offset(0, 10))
                    ]),
                           width: 159,
                         //  height: 20,
                           child: Column(
                             children: [
                               Container(
                                 
                                 width: MediaQuery.of(context).size.width,
                                 height: 130,
                                 decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("${day3[index]["avatar"]}"),fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(10)
                 
                                 ),
                               ),
                 Container(
                                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            "${day3[index]["first_name"]}",
                 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.play_circle_outline,
                                size: 20,
                                color: Color(0xff1780C2),
                              ),
                              const Text(
                                " 20 уроков  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                              Container(
                                width: 3,
                                height: 3,
                                margin: EdgeInsets.only(right: 3),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff737373),
                                ),
                              ),
                              const Icon(   Icons.access_time_outlined,
                                size: 20,
                                color: Color(0xffF97316),
                              ),
                              const Text(
                                "  16 ч",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                ),
                              ),
                          
                      
                                 ],
                               )
                             ],
                           ),
                         )
                       ]
                     )
                         ),
                           SizedBox(width: 5,),
                         
                       ]
                     );
                     
                      
                  
                      
                   
                                   },
                                 ),
                 ),
              
              ],
             ),
    );
  }
}