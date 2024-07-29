 

import 'package:exsam1/large20.dart';
import 'package:exsam1/pages/danie.dart';
import 'package:exsam1/pages/bottomnavigation.dart';
import 'package:exsam1/pages/istoriya.dart';
import 'package:exsam1/pages/istoriya2.dart';
import 'package:exsam1/pages/post.dart';
import 'package:flutter/material.dart';

class Day1 extends StatefulWidget {
  const Day1({super.key});

  @override
  State<Day1> createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  bool a = false;
  Icon b = Icon(Icons.visibility);


   void name2(){
    setState(() {
      if(a==true){
        a=false;
        b=Icon(Icons.visibility_off);
      }
      else {
        a=true;
        b=Icon(Icons.visibility);
      }
    });
  }
   void name1(){
    setState(() {
      if(a==true){
        a=false;
        b=Icon(Icons.visibility_off);
      }
      else {
        a=true;
        b=Icon(Icons.visibility);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF3F4F6),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Профиль",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Icon(Icons.notifications_none_rounded)
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              Column(
                children: [
                    
               
              Container(
                height: 104,
                color: Color(0xffF3F4F6),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 64,
                        height: 64,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffCBD5E1),
                        ),
                        child: Text("СА"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Садриддин Айни"),
                          Text("sadriddinayni@gmail.com"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Large20(),)
                         );
                      },
                      child: Container(
                        width: 158,
                        height: 108,
                        decoration: BoxDecoration(
                          color: Color(0xffF3F4F6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16, top: 16),
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xff1780C2),
                                ),
                                child: const Icon(
                                  Icons.layers_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                "Мои курсы",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
      
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(

                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => Istoriya2(),)
                        );

                      },
                    
                    child: 
                    Container(
                      width: 158,
                      height: 108,
                      decoration: BoxDecoration(
                        color: Color(0xffF3F4F6),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 16),
                            child: Container(
                              width: 84,
                              height: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xff1780C2),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.account_balance_wallet_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    "   950 c",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
      
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              "Кошелек",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),),
                  ],
                ),
              ),
             GestureDetector(
     onTap: () {
       Navigator.push(context, MaterialPageRoute(builder:(context) => Danie(),));
     },
     child:   Padding(
       padding: const EdgeInsets.all(16.0),
       child: Container(
                    width: 328,
                    height: 58,
                    decoration: BoxDecoration(
                      color: Color(0xffF3F4F6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.person_outline_outlined,color: Color(0xff1780C2),),
                        Text(
                          "      Мои данные                               ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          ">",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
     ),
             ),
             
                    SizedBox(
                      width: 10,
                    ),
                  
                  ],
                ),
              
             
              Padding(

                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
      
                    const Text(
                      "Настройки",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                           builder: 
                        (context) {
                          return Container(
                                 height: MediaQuery.of(context).size.height*0.77,                   
                              color: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
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
                                        Text("Сменить пароль",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                       IconButton(onPressed:() {
                                         Navigator.pop(context);
                                       }, icon:  Icon(Icons.close_outlined,size: 25,weight: 10,),)
                                      ],
                                    ),
                                    Image.asset("images/image 131.png"),
                                         Column(
                                              children: [
                             TextField(
                                         obscureText: a,
                                         
                                          decoration: InputDecoration(
                                         
                                            fillColor: Colors.grey[100],
                                           
                                       suffixIcon:IconButton(onPressed: () {
                                            setState(() {
                                             if(a==true){
                                            a=false;
                                             b=Icon(Icons.visibility_off);
                                                    }
                                                    else {
                                                      a=true;
                                                     b=Icon(Icons.visibility);
                                                        }
                                                           });
                                           }, icon: b),
                                            labelText: "Старый пароль",
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        TextField(
                                         obscureText: a,
                                          decoration: InputDecoration(
                                            fillColor: Colors.grey[100],
                                            
                                          suffixIcon:IconButton(onPressed: () {
                                              setState(() {
      if(a==true){
        a=false;
        b=Icon(Icons.visibility_off);
      }
      else {
        a=true;
        b=Icon(Icons.visibility);
      }
    });
                                           }, icon: b),
                                            labelText: "Новый пароль",
                                           
                                            border: OutlineInputBorder(
                                              
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                         TextField(
                                     obscureText: a,
                                          decoration: InputDecoration(
                                          
                                           
                                            hoverColor: Colors.white,
                                            labelText: "Повторите пароль",
                                           suffixIcon:IconButton(onPressed: () {
                                              setState(() {
      if(a==true){
        a=false;
        b=Icon(Icons.visibility_off);
      }
      else {
        a=true;
        b=Icon(Icons.visibility);
      }
    });
                                           }, icon: b),
                                            border: OutlineInputBorder(
                                          
                                            ),
                                          ),
                                        ),
                                              ]
                                            ),
                                                             SizedBox(height: 20,),
                                     Container(
                                      alignment: Alignment.center,
                                              child: Text("Подтвердить",style: TextStyle(fontSize: 20,color: Colors.white),),
                                              width: 338,
                                              height: 56,
                                              decoration: BoxDecoration(
                                                color: Color(0xff1780C2),
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                            )
                              ],
                              ),
                          );
                        },);
                      },
                      child: Container(
                        width: 328,
                        height: 58,
                        decoration: BoxDecoration(
                          color: Color(0xffE2E8F0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.lock_outline_sharp,color: Color(0xff1780C2),),
                            Text(
                              "      Сменить пароль                        ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            Text(
                              ">",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 328,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Color(0xffF3F4F6),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.notifications_none_outlined,color: Color(0xff1780C2),),
                          Text(
                            "      Уведомления                       ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          Icon(Icons.toggle_on_outlined,size: 40,color: Color(0xff1780C2),)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 328,
                      height: 58,
                      decoration: BoxDecoration(
                        color: Color(0xffF3F4F6),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.exit_to_app,color: Color(0xffEF4444),),
                          Text(
                            "      Выйти                                          ",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          Text(
                            ">",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
             
               ],
          ),
             
        
          ),
        ),
    );
    
  }
}

