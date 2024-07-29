import 'package:exsam1/large30.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class Large20 extends StatefulWidget {
  const Large20({super.key});

  @override
  State<Large20> createState() => _Large20State();
}

class _Large20State extends State<Large20> {
  late FlickManager _flickManager;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(
            "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")));
  }
  TextEditingController gary = TextEditingController();

int a =0;
int b=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:  IconButton(
              onPressed: () {
                showModalBottomSheet(context: context, 
                
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                     child: Column(
                      children: [
                        Center(
                          child: Container(
                            width: 32,
                            height: 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffD4D4D4),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Сар",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.close)),
                          ],
                        ),
                         SizedBox(height: 10,),
                         Container(
                          padding: EdgeInsets.fromLTRB(12,12,12,16),
                          width: 600,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 220, 229, 246),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Icon(Icons.menu),
                                    Text("   Чашм", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text("24:05   "),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Icon(Icons.check,color: Colors.white,size: 13,),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              )

                              
                            ],
                          ),
                         ),
                           SizedBox(height: 10,),
                         Container(
                          padding: EdgeInsets.fromLTRB(12,12,12,16),
                          width: 600,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 159, 212, 246),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Icon(Icons.play_circle_outlined),
                                    Text("   Майна", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text("24:05   "),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Icon(Icons.check,color: Colors.white,size: 13,),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              )

                              
                            ],
                          ),
                         ),
                           SizedBox(height: 10,),
                         Container(
                          padding: EdgeInsets.fromLTRB(12,12,12,16),
                          width: 600,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 220, 229, 246),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Icon(Icons.menu),
                                    Text("   Гуш", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text("24:05   "),
                                    Container(
                                      width: 20,
                                      height: 20,
                                    
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                       border: Border.all(color: Colors.grey,width: 1),
                                      ),
                                    )
                                  ],
                                ),
                              )

                              
                            ],
                          ),
                         ),
                           SizedBox(height: 10,),
                         Container(
                          padding: EdgeInsets.fromLTRB(12,12,12,16),
                          width: 600,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 220, 229, 246),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Icon(Icons.play_circle_outline),
                                    Text("   Гул", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text("24:05   "),
                                    Container(
                                      width: 20,
                                      height: 20,
                                     
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                       border: Border.all(color: Colors.grey,width: 1),
                                      ),
                                    )
                                  ],
                                ),
                              )

                              
                            ],
                          ),
                         ),
                           SizedBox(height: 10,),
                         Container(
                          padding: EdgeInsets.fromLTRB(12,12,12,16),
                          width: 600,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 220, 229, 246),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Icon(Icons.play_circle_outline),
                                    Text("   Бини", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text("24:05   "),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                       border: Border.all(color: Colors.grey,width: 1),
                                      ),
                                    )
                                  ],
                                ),
                              )

                              
                            ],
                          ),
                         ),
                      ],
                     ),
                    ),
                  );
                },);
              },
              icon: Icon(Icons.menu)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Майна",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Center(
                child: FlickVideoPlayer(
                  flickManager: _flickManager,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 58,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Color(0xffE0F2FE),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.thumb_up_alt,
                                color: Colors.blue,
                                size: 20,
                              ),
                              Text("16"),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 58,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Color(0xffE0F2FE),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.thumb_down_alt_outlined,
                                color: Color.fromARGB(255, 243, 33, 33),
                                size: 20,
                              ),
                              Text("2"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 58,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 253, 253, 254),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.visibility,
                          color: Color.fromARGB(255, 164, 162, 162),
                          size: 20,
                        ),
                        Text(
                          "25",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              
                 if(a==0)  Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
                              Text(
                                "Комментарии",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 95,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff1780C2), width: 1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  "Написать",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff1780C2)),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      a++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.forum_outlined,
                                    size: 40,
                                    color: Color(0xff94A3B8),
                                  )),
                              Text(
                                "Пока комментариев нет!",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff64748B)),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                 else if(a==1) Container(
                      padding: EdgeInsets.all(16),
                      width: 328,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Color(0xffF3F4F6),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Комментарии",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          TextField(
                            maxLines: 3,
                            controller: gary,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Введите текст",
                              labelStyle:
                                  TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  
                                  setState(() {
                                    a++;
                                    b++;
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 103,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xff1780C2),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    "Отправить",
                                    style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.w500,color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                alignment: Alignment.center,
                                width: 83,
                                height: 40,
                                decoration: BoxDecoration(
                                 border: Border.all( color: Color(0xff1780C2),),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  "Отмена",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w500,color: Colors.blue),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                     if(a==2)  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    width: 328,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Color(0xffF3F4F6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Комментарии (2)",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                       GestureDetector(
                        onTap: () {
                          setState(() {
                            a=1;
                          });
                        },
                         child: Container(
                                           alignment: Alignment.center,
                                           width: 123,
                                           height: 48,
                                           decoration: BoxDecoration(
                                            border: Border.all( color: Color(0xff1780C2),),
                                             borderRadius: BorderRadius.circular(4),
                                           ),
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                             children: [
                                               Text(
                          "Написать",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                               color: Color(0xff1780C2),),
                                               ),
                                             
                                             ],
                                           ),
                                         ),
                       )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                       Container(
                        height: 130,
                         child: ListView.builder(
                          itemCount: b,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(16),
                                width: double.infinity,
                                height: 120,
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(width: 1,color: Colors.black,)),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(image: AssetImage("images/hokim.image.jpg"),fit: BoxFit.cover),
                                          ),
                                        ),
                                        Text("      Sharifzoda Hokim",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),),
                                      
                                      ],
                                    ),
                                      SizedBox(height: 20,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            
                                            Text("${gary.text}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                                          ],
                                        ),
                                  ],
                                ),

                            );
                          },
                          
                          ),
                       )
                      ],
                    ),
                  ),
                     
              SizedBox(
                height: 132,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff1780C2)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 16,
                      color: Color(0xff1780C2),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 123,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0xff1780C2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Дальше",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Color.fromARGB(255, 252, 253, 253),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
