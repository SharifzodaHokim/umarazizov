 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Danie extends StatelessWidget {
  const Danie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Мои данные",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22,color: Colors.black),),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
          Container(
            alignment: Alignment.center,
            child: Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffCBD5E1)
            ),
            alignment: Alignment.center,
            child:const Text("СА",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
          ),
          Positioned(
            top: 72,
            left: 72,
            child: Container(
            width: 28,
            height: 28,
            decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
            ),
            child: Icon(Icons.mode_edit_outline_outlined,size: 20,color: Colors.white,),
            
            ),
          )
        ],
            ),
          ),
        const  SizedBox(
            height: 30,
          ),
        Padding(
          padding:  EdgeInsets.all(16.0),
          child:   Column(
              children: [
        const   TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Имя"
            ),
           ),
           const SizedBox(height: 25,),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Фамилия"
            ),
           ),
           const SizedBox(height: 25,),

          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Введите номер"
            ),
           ),
           const SizedBox(height: 25,),

          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email"
            ),
           ),
           const SizedBox(height: 25,),

          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Город",
              suffixIcon: Icon(Icons.event,color: Color(0xff737373),)
            ),
           ),
           const SizedBox(height: 25,),

          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "дд.мм.гггг"
            ),
           ),
           const SizedBox(height: 40,),
        
           GestureDetector(
            onTap: () {
              showModalBottomSheet(context: context, builder: (context) {
                return Container(
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
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                       
                                       IconButton(onPressed:() {
                                         Navigator.pop(context);
                                       }, icon:  Icon(Icons.close_outlined,size: 25,weight: 10,),)
                                      ],
                                    ),
                                    Center(
                                      child: Container(
                                        width: 250,
                                        height: 184,
                                        child: Image.asset("images/image 117.png",fit: BoxFit.cover,)),
                                    ),
                                    SizedBox(
                                   height: 30,
                                    ),
                                    Center(
                                      child: Text("Успешно!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                    ),
                                    SizedBox(height: 25,),
                                    Center(
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 320,
                                        height: 48,
                                        decoration: BoxDecoration(
                                        
                                          borderRadius: BorderRadius.circular(4),
                                          color: Color(0xff1780C2),
                                        ),
                                        child: Text("Начать консультацию",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),

                                      ),
                                    )
                    ],
                  ),
                );
              },);
            },
             child: Container(
              alignment: Alignment.center,
              width: 328,
              height: 48,
              decoration: BoxDecoration(
                color: Color(0xffE2E8F0),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text("Сохранить")
             
             ),
           )
            ],
            ),
        )
          ],
        ),
      ),
    );
  }
}
