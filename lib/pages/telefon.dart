import 'package:exsam1/pages/register.dart';
import 'package:flutter/material.dart';



class  Telefon extends StatefulWidget {
  const Telefon ({super.key});

  @override
  State<Telefon > createState() => _MyAppState();
}

class _MyAppState extends State<Telefon > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.white,
          title: Text("Umar Azizov",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
          ),
          ),
          centerTitle: true,
        ) ,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
          
              children: [
                Container(
                  child: 
                Image.asset("images/image 134 (3).png"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20,bottom: 20),
                      width: 260,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         TextButton(
                   onPressed: () {
            Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Register()),
            );
                   },
                   style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 20),
                   ),
                   child:  Text("Телефон",
                           style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                             color: Color.fromARGB(255, 117, 115, 115),
                            
                          ),
                          ),
                 ),
                          Container( 
                            decoration: BoxDecoration(
                              border: Border(bottom:BorderSide(width: 4,color: Colors.blue)),  
                            ),
                            child:
                            Text("Email",
                           style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 42, 149, 231),
                            
                          ),
                          ),
                           
                          )
                            
                           
                          
                         
                    
                        ],
                      )
                    
                      )
                  ],
                ),
                 Column(
              children: [
                Container(
                  child: Column(
                    children: [
                             TextField(
               
                // maxLines: 3,
                // obscureText: false,
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  //prefixIcon: Icon(Icons.person),
                  // suffixIcon: Icon(Icons.person_outline),
                  //hintText: "Enter your name",
                  labelText: "Ваше имя",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                //controller: _textController,
                // maxLines: 3,
                //obscureText: btovaNatova,
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  //prefixIcon: Icon(Icons.person),
                  // suffixIcon: Icon(Icons.verified_user),
                  //hintText: "Enter your name",
                  labelText: "Email",
                 
                  border: OutlineInputBorder(
                    
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
               TextField(
                // controller: _textController,
                // maxLines: 3,
                //obscureText: btovaNatova,
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  //prefixIcon: Icon(Icons.person),
                  // suffixIcon: Icon(Icons.verified_user),
                  //hintText: "Enter your name",
                  labelText: "Пароль",
                 suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                  
                  ),
                ),
              ),
                    ]
                  ),
                )
              ],
            ),
            Center(
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    
                    child: Container(
                      
                      margin: EdgeInsets.only(top: 20,bottom: 20),
                      padding: EdgeInsets.only(top: 20),
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
                              Text("Зарегистрироваться",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              
          
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 20),
                  width: 300,
                  
                  child:
                  Column(
                    
                    children: [
                      
                      Text("При регистратсии вы соглашайтесь с Политикой конфиденциальности и Правмлами исползования платформи",
                                    style: TextStyle(
                      fontSize: 13,
                      
                                    ),
                                    ),
                    ],
                  ),
                ),
                
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    
                    width: 210,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                
                          child: Row(
                            children: [
                              Text("Уже есть акаунт?",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                
                          child: Row(
                            children: [
                              Text("Войти",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                              ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
