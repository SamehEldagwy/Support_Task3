import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          SizedBox(height: 30,),
        Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.black26,
              ),
            
            Column(
              children: const [
                Text(
                  "HELLO",
                  style: TextStyle(fontSize: 12, color: Color(0xffF25E3D)),
                ),
                Text(
                  "Sameh Khalil",
                  style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                ),
                
              ],
            ),
          ],
        ),
        Container(
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [

              Center(child: Text("Talabat",style: TextStyle(color: Colors.orangeAccent,fontSize: 20),),),
                     CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.orangeAccent,
                    ),
        
              
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
       Container(
        height: 100,
        width: screenWidth,
  decoration: BoxDecoration(
    color: const Color(0xffF25E3D),
     borderRadius: BorderRadius.circular(30),
    ),

   
  ),
   SizedBox(
          height: 20,
        ),
        Text("Categories" ),
         SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              height: 200,
              width: 200,
        decoration: BoxDecoration(
          color: const Color(0xffF25E3D),
          borderRadius: BorderRadius.circular(30),
    ),

   
  ),
          ],
        ),
         SizedBox(
          height: 20,
        ),
        Text("Offers" ),
         SizedBox(
          height: 20,
        ),
         Row(
          children: [
            Container(
              height: 200,
              width: 200,
        decoration: BoxDecoration(
          color: const Color(0xffF25E3D),
          borderRadius: BorderRadius.circular(30),
    ),

   
  ),
          ],
        ),

 
        ],
      ),
    );
  }
}