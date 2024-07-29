import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Large30 extends StatefulWidget {
  const Large30({super.key});

  @override
  State<Large30> createState() => _Large30State();
}

class _Large30State extends State<Large30> {
  late FlickManager _flickManager;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(
            "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")));
  }

  bool a = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Padding(
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
            
                Container(
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
                       
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                       Container(
                        height: 130,
                         child: ListView.builder(
                          itemCount: 2,
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
                                        SizedBox(height: 20,),
                                        
                                      ],
                                    )
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
              height: 60,
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
    );
  }
}
