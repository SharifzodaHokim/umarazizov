
import 'package:exsam1/pages/home_page.dart';
import 'package:flutter/material.dart';

class Istoriya2 extends StatelessWidget {
  const Istoriya2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Кошелек",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            
            child: Container(
              width: 328,
              height: 98,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffF3F4F6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Text("Баланс"),
                        Text("950 c",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28))
                      ],
                    ),
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
                                          child: Icon(Icons.forum,size: 30,color: Color(0xff1780C2),),
                                          width: 64,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xffF0F9FF),
                                          ),
                                        ),
                                       Text("Консультация",style: TextStyle(fontSize: 24,color: Color(0xff0284C7)),),
                                       Text("60 сомони",style: TextStyle(fontSize: 24,color: Color(0xff262626),fontWeight: FontWeight.w900),),

                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        width: 328,
                                        height: 88,
                                        decoration: BoxDecoration(
                                          color: Color(0xffF3F4F6),
                                        borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Количество консультаций:",style: TextStyle(fontSize: 16,color: Color(0xff525252)),),
                                                Text("3",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
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
                                            
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 30,),
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
                    } ,
                    child: Container(
                      alignment: Alignment.center,
                      width: 124,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff1780C2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child:  Text(
                        "+ Пополнить",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      "История",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              const  SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE0F2FE),
                      ),
                      child: const Icon(
                        Icons.layers_outlined,size: 20,
                        color: Colors.blue,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "   Подписка 1",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text(
                              "   Оплата через кошелек",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffA3A3A3)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "          800 с",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text("      13.05.2024",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xffA3A3A3))),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              const  SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE0F2FE),
                      ),
                      child:const Icon(
                        Icons.forum_outlined,
                        color: Colors.blue,size: 20
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "   Консультация",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text(
                              "   Оплата через кошелек",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffA3A3A3)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "    60 с",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text("       13.05.2024",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xffA3A3A3))),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              const  SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE0F2FE),
                      ),
                      child:const Icon(
                        Icons.layers_outlined,
                        color: Colors.blue,size: 20,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(

                              "   Подписка 2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text(
                              "   Оплата через Корти милли",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffA3A3A3)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "1500 с",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text("13.05.2024",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xffA3A3A3))),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              const  SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE0F2FE),
                      ),
                      child: const Icon(
                        Icons.money_rounded,
                        color: Colors.blue,size: 20,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "   Пополнение кошелька",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text(
                              "   Наличными/кошелек",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xffA3A3A3)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "2000 с",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            Text("13.05.2024",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xffA3A3A3))),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              
               
               
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
