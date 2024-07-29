import 'package:exsam1/main.dart';
import 'package:exsam1/pages/sendcode.dart';
import 'package:flutter/material.dart';
void main(){

  runApp(MyApp());
}

class Forgotpass extends StatefulWidget {
  const Forgotpass({super.key});

  @override
  State<Forgotpass> createState() => _ForgotpassPageState();
}

class _ForgotpassPageState extends State<Forgotpass> {
  @override
  Widget build(BuildContext context) {
    return  
   
      Scaffold(
     
        appBar: AppBar(
          title: Text("Сброс пароля"),
        ),
        body: 
        
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                
                Column(
                    
                  
                  children: [
                 
                  Image.asset("images/image 131.png",),
                    SizedBox(
                 height: 40,
                ),
                  Column(
                    children: [
                      Text("Введите ваш email, на который будет",style: TextStyle(fontSize: 17),),
                      SizedBox(
                        height: 10,
                      ),
                      Text("  отправлен код для сброса пароля",style: TextStyle(fontSize: 17)),
                    ],
                  
                  ),
                  
                  ],
                  
                
                  ),
                 Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
          
                      ),
                    ),
                    SizedBox(
                    height: 50,
                    ),
                    TextField(
                          // controller: _textController,
                  // maxLines: 3,
                  //obscureText: btovaNatova,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    //prefixIcon: Icon(Icons.person),
                    // suffixIcon: Icon(Icons.verified_user),
                    //hintText: "Enter your name",
                    labelText: "Email",
                   
                    border: OutlineInputBorder(
                 ),
                  )
                    ),
                  ],
                 ),
                 SizedBox(
                  height: 50,
                 ),
                     Column(
                    children: [
                        Container(
                        
                        margin: EdgeInsets.only(top: 20,bottom: 20),
                        padding: EdgeInsets.only(top: 8),
                        width:350,
                       height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                             
                              children: [
                                TextButton(
                                   onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sendcode()),
            );
          },
          style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 20)),
                                  child:  Text("Отправить код",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                ),
                                  )
                               
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                 )
              ],
              
            ),
            
          ),
        ),
        
      );

  }
}