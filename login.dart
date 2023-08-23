import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'talabat.dart';
class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: screenHeight,
            decoration: const BoxDecoration(

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Form(
                    key: fromkey,
                    child: Column(
                      children: [
                           Container(
                          child: Text("talabat",
                          style: TextStyle(
                            fontWeight:FontWeight.w900 ,
                            fontSize: 70 ,
                            color: Color(0xffF25E3D)),) ,
                        ),
                     SizedBox(
                          height: 20,
                        ),
                           Container(
                          child: Text("Sign up for free",
                          style: TextStyle(
                            fontWeight:FontWeight.bold ,
                            fontSize: 20 ,
                            ),) ,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "please enter username";
                            }
                          },
                          decoration: InputDecoration(
                              labelText: "username",
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "email",
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              )),
                          validator: (value) {

                            if (value!.isEmpty) {
                                return 'Please enter password';
                                }
                            else{
                              if (!value!.contains("@")) {
                              return "enter valid mail";
                            }
                            }
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "password",
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              )),
                              validator: (value) {
                                  RegExp regex =
                                  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'); 
                            if (value!.isEmpty) {
                                return 'Please enter password';
                              } else {
                                if (!regex.hasMatch(value)) {
                                  return 'Enter valid password';
                                } else {
                                  return null;
                                }
                              
                            }

                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: screenWidth*2 / 3,
                          height: 50.0,
                          child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                                                              
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)

                                ) ,
                                primary: Color(0xffF25E3D), // Background color
                                ),
                              onPressed: () {
                                
                                if (fromkey.currentState!.validate()) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TalabatPage()));
                                }
                              },
                              child: Text("Create Account",style: TextStyle(fontSize: 20),)
                              ,),
                              
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
