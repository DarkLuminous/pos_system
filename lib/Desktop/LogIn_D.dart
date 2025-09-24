import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Responsive_Page.dart';



class D_Log_In_Page extends StatelessWidget {
  const D_Log_In_Page({super.key});

  @override

  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [

            //background image
            Positioned.fill(
              child: Image.asset(
                'assets/DeskBG.png',
                fit: BoxFit.cover,
              ),
            ),
            
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 700,
                  width: 700, // Smaller width
                  margin: EdgeInsets.only(right: 150, left: 150), // Reduced margin
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10), // Rounded edges
                  ),
                  padding: EdgeInsets.all(25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [

                      //Title
                      Container(alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'POS Log in',
                          style: GoogleFonts.outfit(
                              fontSize: 60,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      SizedBox(height: 5,),

                      //don't have an acc
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            alignment: Alignment(-1, 0),
                            child: Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                fontSize: 13, // Slightly smaller font
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Responsive_Sign_In_Page()),
                                );
                              },
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:Colors.green,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 30),

                      //admin or cashier btn
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: Colors.green,    // Border color
                                  width: 1.0,            // Border thickness
                                ),
                                backgroundColor: Colors.white,
                              ),
                              child: Text(
                                'Admin',
                                style:
                                TextStyle(
                                  fontSize: 15, // Slightly smaller font
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),),
                          ),

                          SizedBox(
                            width: 100,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: Colors.green,    // Border color
                                  width: 1.0,            // Border thickness
                                ),
                                backgroundColor: Colors.white,
                              ),
                              child: Text(
                                'Cashier',
                                style:
                                TextStyle(
                                  fontSize: 15, // Slightly smaller font
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),),
                          ),
                        ],
                      ),

                      SizedBox(height: 15),

                      //username or email
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'UserName/Email',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.green,
                                width: 2.0
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.blueAccent, // Different color when focused
                                width: 2.0
                            ),
                          ),
                          border: OutlineInputBorder( // Default border
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.green,
                                width: 2.0
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 12),

                      //password
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Password',
                          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.green,
                                width: 2.0
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.blueAccent, // Different color when focused
                                width: 2.0
                            ),
                          ),
                          border: OutlineInputBorder( // Default border
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.green,
                                width: 2.0
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 12),

                      //forgot password
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 5),
                        alignment: Alignment(-1,0),
                        child: InkWell(
                          onTap: () {
                            //add function here
                          },
                          child: Text(
                            'Forgot your Password?',
                            style: TextStyle(
                              color:Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 12),

                      //login btn
                      Container(
                        width: 900.0,
                        height: 40.0,
                        margin: EdgeInsets.only(left: 30, right: 30),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Responsive_Dashboard_Page()),
                          );},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          child: Text(
                            'Log In',
                            style:
                            TextStyle(
                              fontSize: 20, // Slightly smaller font
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),),
                      ),

                      SizedBox(height: 12),

                    ],
                  ),
                ),
              ),

            ),
          ],
        );
      }
    );
  }
}