import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../List_Manager.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});


@override Widget build(BuildContext context) {
  return SizedBox(
    width: 1000,
    child: Column(
      children: [

        Container(alignment: Alignment.centerLeft,
          width: 1000,
          margin: EdgeInsets.only(bottom: 20, top: 10, left: 10),
          child: Text(
            'Dashboard',
            style: GoogleFonts.outfit(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),

        DashboardInfoBuilder(),

        Container(alignment: Alignment.centerLeft,
          width: 1000,
          margin: EdgeInsets.only(bottom: 10, top: 10, left: 10),
          child: Text(
            'Categories',
            style: GoogleFonts.outfit(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),

        DashboardCategoriesBuilder(),

        Container(alignment: Alignment.centerLeft,
          width: 1000,
          margin: EdgeInsets.only(top: 50, left: 10),
          child: Text(
            'Top 3 Selling Items',
            style: GoogleFonts.outfit(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),

        DashboardTopItemBuilder(),


      ],
    ),
  );
}
}