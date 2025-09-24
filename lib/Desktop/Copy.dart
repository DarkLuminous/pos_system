import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../List_Manager.dart';
import 'package:auto_size_text/auto_size_text.dart';

class copy extends StatelessWidget {
  const copy({super.key});


  @override Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Flexible(
          flex: 2,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 50,),
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(-1, 4),),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ProProductBuilder(),
              ),

              Container(
                margin: EdgeInsets.only(left: 50, right: 10, top: 20),
                width: 1200,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ProCategoriesBuilder(),
              ),
            ],
          ),
        ),

        Flexible(
          child: Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [

                Container(
                    height: 600,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          alignment: Alignment.topCenter,
                          child: AutoSizeText(
                            "Current Order",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                            GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        Divider(
                          color: Colors.white,
                          thickness: 0.4,
                        ),
                      ],
                    )
                ),

                SizedBox(height: 30,),

                Container(
                  margin: EdgeInsets.all(10),
                  width: 800,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: AutoSizeText(
                      "Total: ",
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                      GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 200,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(
                              color: Colors.red,    // Border color
                              width: 3.0,            // Border thickness
                            ),
                            backgroundColor: Colors.white,
                          ),
                          child: AutoSizeText(
                            "Cancel Order",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                            GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Flexible(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 40.0,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(
                              color: Colors.green,    // Border color
                              width: 3.0,            // Border thickness
                            ),
                            backgroundColor: Colors.white,
                          ),
                          child: AutoSizeText(
                            "Pay",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                            GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
