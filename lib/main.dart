import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Nunito"
      ),
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Container(
          child:LoginPage(),
          ),
        ),
      );
    
  }
}



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
  int _pageState=0;

  var _backgroundColor= Colors.white;
  @override
  Widget build(BuildContext context) {


    switch(_pageState) {
      case 0:
         _backgroundColor=Colors.white;
          break;
      


      case 1:
        _backgroundColor=Color(0xFFBD34C59);

          break;
      case 2:
        _backgroundColor=Color(0xFFBD34C59);
        break;
    }
    return Container(
      color: _backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
          Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      top:100
                      ),


                    child: Text(
                      "Eat Bitch",
                      style: TextStyle(
                         color: Color(0xFFB40284A),
                         fontSize: 28
                      ),
                      ),
                    ),
                  Container(
                    margin: EdgeInsets.only(
                      top:20,
                      right: 32,
                      left: 32
                      ),
                    padding: EdgeInsets.symmetric(
                      horizontal:20
                      ),
                    child: Text("I love Covid and Covid loves me next time wont u play with me",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                           color: Color(0xFFB40284A),
                           fontSize: 16
                        ),
                        ),
                  ),
                ],
                ),
             ),
          Container(
               padding: EdgeInsets.symmetric(
                 horizontal:32
               ),
            child:Center(
              child: Image.asset("assets/images/cafe.png"),
                ),
             ),
          Container(
             child: GestureDetector(
                onTap: () {
                   setState(() {
                    if(_pageState!=0){
                      _pageState=0;
                    }
                    else {
                      _pageState=1;
                    }
                     
                   });
                },            
                            
                child: Container(
                 margin: EdgeInsets.all(32),
                 padding: EdgeInsets.all(20),
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: Color(0xFFB40284A),
                   borderRadius: BorderRadius.circular(50)
                 ),
                child:Center(
                 child: Text("Get Started",
                 style: TextStyle(
                   color:Colors.white

                 ),
                  ),
                 ),
                ),
             ),
             ),

        ],
        ),
    );
  }
}
