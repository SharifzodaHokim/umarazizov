import 'package:flutter/material.dart';

class Rat extends StatefulWidget {
  final Color a; 
   final String b;
    final String c;
     final String d;
    //  final String e;

  const Rat({super.key,
  required this.a,
   required this.b,
    required this.c,
     required this.d,
     // required this.e,
  });

  @override
  State<Rat> createState() => _RatState();
}

class _RatState extends State<Rat> {
  @override
  Widget build(BuildContext context) {
    return Column(
           children:[
              Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        padding: EdgeInsets.only(left: 20),
                        width: 328,
                        height: 180,
                        decoration: BoxDecoration(
                          color: widget.a,
                           borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(widget.b,style: TextStyle(fontSize: 20,color: Color(0xffEA580C)),),
                                     SizedBox(height: 6,),
                                    Row(
                                      children: [
                                        Text(widget.c,style: TextStyle(fontSize: 24,color: Color(0xff262626),fontWeight: FontWeight.bold),),
                                       
                                      ],
                                
                                    ),
                                     SizedBox(height: 8,),
                                    Text(widget.d,style: TextStyle(fontSize: 16,color: Color(0xff404040)),),
                                  ],
                                ),
                              
                              ],
                            ),
                            SizedBox(height: 20,),
                             Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 296,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                          child: Center(child: Text("Выбрать",style: TextStyle(fontSize: 16,color: Color(0xff1780C2),fontWeight: FontWeight.w700),)),
                        )
                            
                          ],
                        ),
                      ),
                        Positioned(
                          
                          right: -90,
                          
                                      child: Container(
                                        width: 200,
                                        height: 75,
                                        margin: EdgeInsets.only(right: 50),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                             Text("  880 сом/мес",style: TextStyle(fontSize: 16,color: Color(0xff737373),fontWeight:FontWeight.w200),),
                                            // Image.asset("images/Frame 514481.png"),
                                          ],
                                        ),
                                      ),
                                    ),
                    ],
                  ),
           ]
    );
  }
}