

import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Name1 extends StatefulWidget {
  const Name1({super.key});

  @override
  State<Name1> createState() => _Name1State();
}

class _Name1State extends State<Name1> {
    List<String> names = [
    "Сутунмухра",
   "Анатомия",
   "Дарди шишро"
  ];

  List<String> images = [
    "images/Spine.png",
    "images/image 95.png",
    "images/image 98.png",
  ];
  List bay3 = [];

void initState(){
  super.initState();
  farid();
}

  Future farid() async{
    var bay1 = await http.get(Uri.parse("https://reqres.in/api/users?page=1"));
    if(bay1.statusCode == 200){
      var bay2 = json.decode(bay1.body);
      setState(() {
        bay3 = bay2["data"];
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: Text("Мои курсы",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: bay3.isEmpty? Center(child: CircularProgressIndicator(),):SingleChildScrollView(
        child: Padding(
          
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            children: [
              
             
             
             
           
            const SizedBox(
              height: 20,
            ),
            Container(
              height:MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(bottom: 40),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: bay3.length,
                itemBuilder: (context, index) {
                  return   Padding(
      padding: const EdgeInsets.all(16),
      child:Row(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 300,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                               color: Color(0xFF111827),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 80,
                                  decoration: BoxDecoration(
                                    
                                    borderRadius: BorderRadius.circular(10),
                                    image:DecorationImage(image: NetworkImage("${bay3[index]["avatar"]}"),fit: BoxFit.cover),
                                  ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${bay3[index]['first_name']}',
                            style: const TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),),
                            Row(
                              children: [
                                const Icon(Icons.play_circle_outline,color: Colors.blue,size: 20,),
                                const Text(" 20 уроков "),
                                Container(
                                  margin: const EdgeInsets.only(right: 3),
                                  width: 3,
                                  height: 3,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Icon(Icons.access_time,color: Colors.orange,size: 20,),
                                const Text(" 16 ч "),
                              ],
                            ),
                            const Row(
                              children: [
                                SizedBox(height: 50,),
                                Text("Подписка: ",style: TextStyle(fontSize:18 ),),
                                Text("20 дней",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 7, 201, 14),fontWeight: FontWeight.bold),)
                              ],
                            ),
                            
                          ],
                                        ),
                                    
                            ],
                          ),
                            Column(
                              children: [
                                Row(
                                                    
                                                children: [
                                                  Container(
                                                    width: 250,
                                                    height: 10,
                                                    decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0xffF5F5F5),
                                                    ),
                                                    child: Row(
                                children: [
                                  Container(
                                           width: 60,       
                                    decoration: BoxDecoration(
                                      
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                                                    ),
                                                  ),
                             
                                                ],
                                              ),
                                              const SizedBox(height: 2,),
                                                                   Row(
                                                    children: [
                                const Row(
                                 
                                  children: [
                                    Text("Пройдено: ",style: TextStyle(fontSize: 18),),
                                    Text("6/20",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 70),
                                  child: const Text("32%",style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),)
                                  ),
                                                    ],
                                                  )
                              ],
                            )
                        ],
                      ),
                      
                    ),
                  
                  ],
                ),
                       
             
             
              ],
            ),
    );
                },
              ),
            ),

            ],
          ),
        ),
      ),
    );
    
  }
}