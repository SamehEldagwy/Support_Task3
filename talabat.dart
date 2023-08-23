import 'package:flutter/material.dart';
import 'package:talabat/homepage.dart';
import 'package:talabat/offers.dart';
import 'package:talabat/orders.dart';
import 'package:talabat/profile.dart';
import 'package:talabat/vouchers.dart';

class TalabatPage extends StatefulWidget {
  const TalabatPage({super.key});

  @override
  State<TalabatPage> createState() => _TalabatPageState();
}

class _TalabatPageState extends State<TalabatPage> {
   int indexValue = 0;
  List<Widget> pages = const [
    HomePage(),
    Orders(),
    Vouchers(),
    Offers(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexValue,
       selectedItemColor: Color(0xffF25E3D),
       unselectedItemColor: Colors.grey,
        
        onTap: (index) {
          setState(() {
            indexValue = index;
          });
        },
        backgroundColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Orders", icon: Icon(Icons.list)),
          BottomNavigationBarItem(label: "Vouchers", icon: Icon(Icons.airplane_ticket_rounded)),
          BottomNavigationBarItem(label: "Offers", icon: Icon(Icons.local_offer_rounded)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person_2_rounded)),
        ],
      ),
      
    
      body: pages[indexValue],
    );
  }
}
