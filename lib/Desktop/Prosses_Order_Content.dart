import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../List_Manager.dart';

class ProcessOrderContent extends StatelessWidget {
  const ProcessOrderContent({super.key});


  @override Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          flex: 2,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 50,),
                width: 1400,
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

        Expanded(
          child: Container(
            margin: EdgeInsetsGeometry.all(20),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 800,
                  height: 580,
                  decoration: BoxDecoration(
                  color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.topCenter,
                        child: Text(
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
                      )




                    ],
                  )
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  width: 800,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}