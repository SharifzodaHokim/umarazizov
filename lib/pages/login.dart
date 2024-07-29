import 'package:exsam1/pages/bottomnavigation.dart';
import 'package:exsam1/pages/chat.dart';
import 'package:exsam1/pages/forgotpass.dart';
import 'package:exsam1/pages/hokim.dart';
import 'package:exsam1/pages/home_page.dart';

import 'package:exsam1/pages/register.dart';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 var emailContoller = TextEditingController(text: 'eve.holt@reqres.in');
  var passwordContoller = TextEditingController(text: 'cityslicka');
  var secureStorage = FlutterSecureStorage();
  String emailText = '';
  String passwordText = '';
  String gandaToken = '';

  Future logInMethod(String email, String password) async {
    var response = await http.post(Uri.parse("https://reqres.in/api/login"),
        headers: <String, String>{
          'Content-Type': "application/json",
        },
        body: jsonEncode({
          "email": email,
          "password": password,
        }));

    if (response.statusCode == 200) {
      var tok = json.decode(response.body)['token'];

      setState(() {
        gandaToken = tok;
      });

      await secureStorage.write(key: 'token', value: tok);
      print(tok);

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Bottomnavigation()));
    }
  }
 



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body:
      
         SingleChildScrollView(
           child: Padding(
            padding:  EdgeInsets.all(16.0),
                   
            child: SingleChildScrollView(
              
              child: Column(
              
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    width: 200,
                    height: 80,
                    child:
                    Image.asset("images/Umar Azizov.png",fit: BoxFit.contain,),
                  ),
                  Container(
                    child: 
                  Image.asset( "images/image 134 (3).png",),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40,bottom: 40),
                        width: 260,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Телефон",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 117, 115, 115),
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
                 controller: emailContoller,
               
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                  
                    labelText: "Введите Email",
                    border: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 219, 217, 217)),
                    ),
                  ),
                ),
           
                SizedBox(
                  height: 30,
                ),
                 TextField(
                   controller: passwordContoller,
               
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                  
                    labelText: "Пароль",
                   suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                    
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
              
                  child: 
               TextButton(
                   onPressed: () {
            Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Forgotpass()),
            );
                   },
                   style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 20),
                   ),
                   child: Text(
            "Забыли пароль?",
            style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                   ),
                 ),
               
               
                )
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
                      child: GestureDetector(
                        onTap: () {
                       
                           logInMethod(
                            emailContoller.text, passwordContoller.text);
                  setState(() {
                    emailText = emailContoller.text;
                    passwordText = passwordContoller.text;
                  }
                  
                          );
                        
                        },
                        child: Container(
                        
                        margin: EdgeInsets.only(top: 20,bottom: 20),
                        padding: EdgeInsets.only(top: 15),
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
                                   Text("Войти",
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
                      ),
                      
                    )
                  ]
            
                ),
              ),
              Row(
                
            
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(bottom: 20),
                    width: 300,
                    
                   
                  ),
                  
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      
                      width: 350,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                  
                            child: Row(
                              children: [
                               TextButton(
                   onPressed: () {
            Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Hokim()),
            );
                   },
                   style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 20),
                   ),
                   child: Text("Уже есть акаунт?",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                                ),
                 ),
                              ],
                            ),
                          ),
                         TextButton(onPressed: () {
                           Navigator.push(context, 
                           MaterialPageRoute(builder:(context) => Register(),)
                           );
                         }, child:  Row(
                                children: [
                                  Text("Зарегистрироваться",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
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
         ),
        
    );
  }
  
 
  

}




