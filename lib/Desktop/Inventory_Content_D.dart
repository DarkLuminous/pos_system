import 'package:flutter/material.dart';
import '../List_Manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:intl/intl.dart';


class InventoryContentD extends StatelessWidget {
  const InventoryContentD({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Container(
                margin: EdgeInsets.all(10),
                child: OutlinedButton.icon(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 123, 19, 1),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  ),
                  icon: Icon(Icons.add, color: Colors.white, size: 18),
                  label: AutoSizeText(
                    "Add New Product",
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

            ],
          ),
          Container(
            color: Color.fromARGB(250 ,229, 252, 200),
            height: 700,
            child: InvProductBuilder(),
        ),
        ],
      ),
    );
  }
}
