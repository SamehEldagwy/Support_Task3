import 'package:flutter/material.dart';
import 'package:talabat/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});



  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
    @override
  initState(){
    super.initState();
    _navigatetohome();
  }
_navigatetohome() async {
  await Future.delayed(Duration(milliseconds: 500),(){});
  Navigator.pushReplacement( context , MaterialPageRoute(builder: (context) => MyApp()));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      
      backgroundColor: Color(0xffF25E3D),
      body: Center(
        child: Container(
          child: Text("talabat",
          style: TextStyle(
            fontWeight:FontWeight.w900 ,
            fontSize: 80 ,
            color: Color(0xFFF2F2F2)),) ,
        ),
      )
    );
  }
}