import 'dart:async';



import 'package:flutter/material.dart';





import 'package:exsam1/pages/Gridview.dart';
import 'package:exsam1/pages/contains.dart';
import 'package:exsam1/pages/courses.dart';
import 'package:exsam1/pages/name.dart';
import 'package:exsam1/pages/name1.dart';


class HomePage extends StatefulWidget {

   HomePage({super.key, cnt, rang3});

  @override
  
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
  
 
  List<String> names = [
    "Сутунмухра",
   "Анатомия",
   "Дарди шиш"
  ];

  List<String> images = [
    "images/Spine.png",
    "images/image 95.png",
    "images/image 98.png",
  ];
   List<String> imagho = [
    "images/Spine.png",
    "images/image 95.png",
    "images/image 98.png",
   "images/Spine.png",
  ];
  
    List<String> imagees = [
"images/Frame 1261154925.png",
"images/Frame 1261154925.png",
"images/Frame 1261154925.png",

  ];
  List<String> text = [
    "Анатомия",
    "Шиши нав",
    "Дарди шиш",
    "Сутунмухраи качала",
  ];
   
   
  
  late List<Widget> _pages;
  int _activePage = 0;
  Timer? _timer;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    
    _pages = List.generate(imagees.length, (index) => _ImagePlaceholder(imagePath:imagees[index],));
   
  }


  //for darkmetod
  List<Icon>ikon=[
    Icon(Icons.nights_stay_rounded),
    Icon(Icons.sunny),
  
  ];
 List <Color> rang1 = [
  Colors.white,
  Color.fromARGB(255, 55, 52, 60),
 ];
 List <Color> rang2 = [
  Colors.blue,
  Color.fromARGB(255, 61, 61, 61)
 ];
  List <Color> rang3 = [
    Colors.black,
  Colors.white,
  
 ];
  List <Color> rang4 = [
    const Color.fromARGB(255, 101, 100, 100),
  Colors.white,
  
 ];
 
 int cnt=0;
  void korkun(){
    
    many();
  }

  void many() {
    return setState(() {
   
    if(cnt==1){
      cnt=0;
    }
    else{
      cnt++;
    }
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
       title:  Image.asset("images/Umar Azizov.png",width: 170,height: 30,fit: BoxFit.contain,),
       actions:  [
          Padding(
            padding: EdgeInsets.only(right: 21.0),
              child: Icon(Icons.notifications_on_outlined,color: Colors.black,),
            ),
     
         ],
       centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          color: rang1[cnt],
        
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 18,horizontal: 16),
                width: double.infinity,
          height: 160,
          decoration: BoxDecoration(color: rang2[cnt]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage("images/hokim.image.jpg",),fit: BoxFit.cover)
                          ),
                          ),
                         IconButton(onPressed: () {
                           korkun();
                          

                         }, icon:ikon[cnt],color: Colors.white,iconSize: 25,),
                                  
                      ],
                    ),
                    SizedBox(height: 20,),
                     
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                           Text("Sharifzoda0206",style: TextStyle(fontSize: 15,color:Colors.white),),
                            Text("+992 005667221",style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 221, 218, 218)),),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined,size: 30,color: Colors.white,)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
               color: rang1[cnt],
               
                child: Column(
                  children: [
                    inkwel(ikon: Icon(Icons.person,size: 30,color:rang4[cnt]),name: "   My Profile", ),
                    Container(
                      width: double.infinity,
                      height: 0.5,
                      color: const Color.fromARGB(255, 136, 133, 133),
                      margin: EdgeInsets.symmetric(vertical: 10),
                    ),
                    inkwel( ikon: Icon(Icons.people_alt,size: 30,color:rang4[cnt]),name: "   New Group,",),
                    inkwel(ikon: Icon(Icons.person,size: 30,color:rang4[cnt]),name: "   Contacts"),
                    inkwel(ikon: Icon(Icons.person,size: 30,color:rang4[cnt]),name: "   My Profile"),
                    inkwel(ikon: Icon(Icons.call,size: 30,color:rang4[cnt]),name: "   Calls",),
                    inkwel(ikon: Icon(Icons.emoji_people_sharp,size: 30,color:rang4[cnt]),name: "   People Nearby",),
                    inkwel(ikon: Icon(Icons.save_rounded,size: 30,color:rang4[cnt]),name: "   Saved Masseges",),
                    inkwel(ikon: Icon(Icons.settings,size: 30,color:rang4[cnt]),name: "   Settings",),
                      Container(
                      width: double.infinity,
                      height: 0.5,
                      color: const Color.fromARGB(255, 136, 133, 133),
                      margin: EdgeInsets.symmetric(vertical: 10),
                    ),
                    inkwel(ikon: Icon(Icons.person_add,size: 30,color:rang4[cnt]),name: "   Invite Friends",),
                    inkwel(ikon: Icon(Icons.question_mark_rounded,size: 30,color:rang4[cnt]),name:"   Telegram Features",),
                  ],
                ),
              )
              
            ],
          ),
        ),
      ),
      body:
      
      
      
      
      Container(
        child: SingleChildScrollView(
          child: Padding(
            
            padding: const EdgeInsets.all(16.0),
            child: Column(
              
              children: [
                 SizedBox(
                height: 11,
                ),
                 Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: SizedBox(
                      width:450,
                      height: 180,
                    
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: imagees.length,
                        onPageChanged: (value){
                          setState(() {
                            _activePage = value;
                          });
                        },
                        itemBuilder: (context,index){
                        return _pages[index];
                      }),
                    ),
                  ),
                  Positioned(
        
                    bottom: -20,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: 
                          List<Widget>.generate
                          (_pages.length,(index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: InkWell(
                              onTap: (){
                               _pageController.animateToPage(index, duration:Duration (milliseconds:300), curve: Curves.easeIn);
                              },
                              child: CircleAvatar(
                              radius: 5,
                              backgroundColor: _activePage == index?Colors.yellow:Colors.grey,
                              ),
                            ),
                          ))
                        
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
                 SizedBox(
                  height: 13,
                ),
               
                 SizedBox(
                height: 25,
                ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Мои курсы",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                                  TextButton(
                    onPressed: () {
              Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Name1()),
              );
                     },
                     style: TextButton.styleFrom(
              textStyle: TextStyle(fontSize: 20),
                     ),
                     child:    Text("Смотреть все",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.blue),),
                   ),
                    Icon(Icons.keyboard_arrow_right,color: Colors.blue,size: 25,),
                  ],
                )
                ],
              ),
             
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Name(
                      post: names[index],
                      rang: images[index],
                    );
                  },
                ),
              ),
              Container(
                  height: 240,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (context,index){
                      return Contains(
                        post: names[index],
                        rang: images[index],
                      );
                    }
                    ),
              )
            ,
          SizedBox(height: 20,),
          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Все курсы",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                                  TextButton(
                    onPressed: () {
              Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Courses()),
              );
                     },
                     style: TextButton.styleFrom(
              textStyle: TextStyle(fontSize: 20),
                     ),
                     child:    Text("Смотреть все",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.blue),),
                   ),
                    Icon(Icons.keyboard_arrow_right,color: Colors.blue,size: 25,),
                  ],
                )
                ],
              ),
              SizedBox(height: 20,),
               Column(
                children: [
                   Container(
                    height: 410,
                     child: GridView.builder(
                      
                    physics: NeverScrollableScrollPhysics(),
                                     gridDelegate: const   SliverGridDelegateWithFixedCrossAxisCount(
                                     mainAxisSpacing: 35,
                      crossAxisCount: 2
                      ),
                                     itemCount: 4,
                                     itemBuilder: (context,index){
                      return Myadd(
                        jad: imagho[index],
                        text1: text[index],
                        
                      );
                        
                     
                                     },
                                   ),
                   )
                ],
               ),
               SizedBox(
                height: 40,
               ),
                
                           
              ],
            ),
          ),
        ),
      ),
   
     
        
      );
  }
}

class inkwel extends StatefulWidget {
  final Icon ikon;
  final String name;
      
  const inkwel({
    required this.ikon,
    required this.name,
    
    super.key,
  });

  @override
  State<inkwel> createState() => _inkwelState();
}

class _inkwelState extends State<inkwel> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.blue,
      hoverColor: Colors.blue,
      autofocus: true,
      mouseCursor:SystemMouseCursors.allScroll,
      onTap: () {
      
      },
      child: Container(
        height: 40,
        child: Row(
          children: [
            widget.ikon,
            Text(  "${widget.name}", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600 ,), ),
          ],
        ),
      ),
    );
  }
}
class _ImagePlaceholder extends StatelessWidget {
  final String? imagePath;
  const _ImagePlaceholder({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath!,
      width: 200,
      height: 300,fit: BoxFit.cover,);
  }
}
