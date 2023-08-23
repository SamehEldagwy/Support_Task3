import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:talabat/home.dart';


void main() {
  runApp(const My_App());
}

class My_App extends StatefulWidget {
  const My_App({super.key});

  @override
  State<My_App> createState() => _MyAppState();
}

class _MyAppState extends State<My_App> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: AnimatedSplashScreen(

      splash: Center(
       
            
              
        child: Container(
                child: Text("talabat",
                style: TextStyle(
                  fontWeight:FontWeight.w900 ,
                  fontSize: 80 ,
                  color: Color(0xFFF2F2F2)),) ,
              ),
            
          
        
      )
      ,nextScreen:MyApp() ,animationDuration: Duration(milliseconds: 1000),splashTransition: SplashTransition.slideTransition,
      backgroundColor:  Color(0xffF25E3D),),
    );
  }
}

