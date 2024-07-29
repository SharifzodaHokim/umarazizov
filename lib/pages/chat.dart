import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
TextEditingController gary = TextEditingController();

  int cnt=0;
  void name(){
    setState(() {
      cnt++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(16.0),
         child: Column(
       
          children: [
            Container(
              margin: EdgeInsets.only(top: 30,left: 10),
              width: 250,
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    
                    width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white,width: 3,) ,
                              image: DecorationImage(image: AssetImage("images/IMG_5364 1 (1).png",),fit: BoxFit.cover,),
                            ),
                  ),
                  Column(
                    
                    children: [
                  Column(
                   
                    children: [
                      Text("Умар Азизов",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
       
                    ],
                  ),
                  Container(
                    
                    margin: EdgeInsets.only(top: 5),
                    width: 120,
                    child: Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 4,right: 6),
                          width: 13,
                          height: 13,
                          decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color: Colors.green,
                          ),
                          
                        ),
                        Text("Online"),
                      ],
                    ),
                  ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      cnt=0;
                    },
                    icon: Icon(Icons.delete,color: Colors.red,)),
                ],
                ),
            ),
           Container(
             child: Column(
              
               children: [
                 Container(
                   height: 550,
                   child:  ListView.builder(
                   scrollDirection: Axis.vertical,
                   
                   itemCount: cnt,
                   itemBuilder: (context,index){
                     return Container(
                      alignment: Alignment.center,
                      child: Text(gary.text,style: TextStyle(fontSize: 20,color: Colors.white),),
                         margin: EdgeInsets.only(top: 30,left: 100),
                        height: 50,
                         decoration: BoxDecoration(
                           color: Colors.blue,
                           borderRadius:BorderRadius.only(
                             topLeft: Radius.circular(20),
                             topRight: Radius.circular(20),
                             bottomLeft: Radius.circular(20),
                           )
                           
                           
                             
                           
                          
                           
                         ),
                       );
                   
                   }
                   ),
                  
                   ),
                   
               ],
             ),
           ),
             TextField(
              controller: gary,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "send",
                    suffixIcon: IconButton(
                      onPressed: () {
                        name();
                      } 
                    
                    , icon: Icon(Icons.send)),
                    prefixIcon: Icon(Icons.emoji_emotions)
                  ),
                ),
          ],
          
         ),
         
       ),
     ),
     

    );
  }
}