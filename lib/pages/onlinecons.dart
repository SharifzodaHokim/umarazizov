

import 'package:flutter/material.dart';
import 'dart:convert' ;
import 'package:http/http.dart' as http;



class Onlinecons extends StatefulWidget {
  const Onlinecons({super.key});

  @override
  State<Onlinecons> createState() => _MyAppState();
}

class _MyAppState extends State<Onlinecons> {
  List javob = [];

@override
void initState(){
  super.initState();
  getUserData();
}
Future getUserData() async {
  var resp = await http.get(Uri.parse('https://reqres.in/api/users?page=1'));
  if (resp.statusCode == 200) {
    var rez = json.decode(resp.body);
    setState(() {
      javob = rez['data'];
     
    });
  }
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Онлайн-консультатсия",
          style: TextStyle(
            color: Colors.black,
          ),
          ),
         actions: [
          Padding(
            padding: const EdgeInsets.only(right: 21.0),
              child: Icon(Icons.notifications_on_outlined,color: Colors.black,),
            ),
     
         ],
         
        ),
        body: javob.isEmpty ? Center(child: CircularProgressIndicator(),) : SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                
                  
                     Container(
                      margin: EdgeInsets.only(bottom: 60),
                         
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                                                  padding: EdgeInsets.only(top: 20),
                                                  alignment: Alignment.topCenter,
                                                  width: 600,
                                                  height: 150,
                                                  decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)
                                                  ),
                                                  child: Image.asset("images/Logo_long (1).png",),
                                                ),
                                       
                                       
                      Positioned(
                         bottom: -60,
                          left: MediaQuery.of(context).size.width/2-80,
                        child: Positioned(
                          bottom: -60,
                          left: MediaQuery.of(context).size.width/2-80,
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white,width: 3,) ,
                              image: DecorationImage(image: NetworkImage("${javob[1]['avatar']}"),fit: BoxFit.cover,),
                            ),
                          ),
                        ),
                      ),
                           
                        ],
                        
                      ),
                                         
                                         
                                         ),
                
                   Column(
                children: [
                  
                   
                      
                    Text('${javob[1]['first_name']}',style: TextStyle(fontSize: 40,color: Colors.blue,fontWeight: FontWeight.w600),),
                  SizedBox(height: 16,),
                    Text("Руководитель клиники EuroMed в Душанбе",style: TextStyle(fontSize: 15,color: Colors.grey,)),
                  
                  
                ],
          
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width*2,
                height: 90,
                decoration: BoxDecoration(
                color: Color(0xffF4F4F5)  ,
                borderRadius: BorderRadius.circular(8),
                
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Количество",style: TextStyle(fontSize: 17,color: Colors.grey),),
                    SizedBox(height: 10,),
                    Text("консультаций:3",style: TextStyle(fontSize: 25,),),
                  ]
                ),
              ),
              SizedBox(height: 60,),
              Column(
                
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    width: 320,
                    height: 80,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 8,
                          blurRadius: 8,
                          offset: Offset(0, 10),
          
                        )
                      ],
                      
                    ),
                    child: Center(
                      
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     
                        children: [
                          Column(
                             
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Text("Цена",style: TextStyle(color: Colors.grey,fontSize: 16),),
                             SizedBox(height: 6),
                             Text("60 сомони",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(context: context, 
                              builder: (context){
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      width:  32,
                                      height: 4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xffD4D4D4),
                                        
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Подтверждение",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                       IconButton(onPressed:() {
                                         Navigator.pop(context);
                                       }, icon:  Icon(Icons.close_outlined,size: 25,weight: 10,),)
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Column(
                                      children: [
                                        Container(
                                          child: Icon(Icons.layers,size: 30,color: Color(0xff1780C2),),
                                          width: 64,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xffF0F9FF),
                                          ),
                                        ),
                                       Text("Подписка 1",style: TextStyle(fontSize: 24,color: Color(0xff0284C7)),),
                                       Text("850 сом/мес",style: TextStyle(fontSize: 24,color: Color(0xff262626),fontWeight: FontWeight.w900),),

                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        width: 328,
                                        height: 152,
                                        decoration: BoxDecoration(
                                          color: Color(0xffF3F4F6),
                                        borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Подписка на курсы:",style: TextStyle(fontSize: 16,color: Color(0xff525252)),),
                                                Text("30 дней",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                                              ],
                                            ),
                                            SizedBox(height: 7,),
                                             Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Способ оплаты:",style: TextStyle(fontSize: 16,color: Color(0xff525252)),),
                                                Text("Кошелек",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                                              ],
                                            ),
                                            SizedBox(height: 7,),
                                             Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Скидка:",style: TextStyle(fontSize: 16,color: Color(0xff525252)),),
                                                Text("200 сомони",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                                              ],
                                            ), SizedBox(height: 7,),Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Итого:",style: TextStyle(fontSize: 16,color: Color(0xff525252)),),
                                                Text("650 сомони",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 8,),
                                       Container(
                                        alignment: Alignment.center,
                    child: Text("Подтвердить",style: TextStyle(fontSize: 20,color: Colors.white),),
                    width: 328,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xff1780C2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  )
                                  ],
                                ),
                              );
                              }
                              );
                            },
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.only(left:38,top: 10),
                               width: 150,
                               height: 50,
                               decoration: BoxDecoration(
                                color: Color(0xff1780C2),
                                borderRadius: BorderRadius.circular(8)
                               ),
                               child: Text("Купить",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                              ),
                            ),
                          )
                        ],
                        
                      ),
                    ),
                    
                  ),
                 
                ],
              ),
                
          
              ],
            ),
          ),
        ),
          
          
        ),
        
      
      );
    
  }
}
