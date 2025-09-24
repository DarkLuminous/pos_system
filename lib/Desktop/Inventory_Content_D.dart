import 'package:flutter/material.dart';
import '../List_Manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:intl/intl.dart';
import 'package:data_table_2/data_table_2.dart';


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
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 123, 19, 1),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: BorderSide(color: Colors.green),
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
            margin: EdgeInsets.only(top: 10, bottom: 20),
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black45, width: 0.4),
              color: Colors.white ,
            ),
            child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: AutoSizeText(
                        "Image",
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:
                        GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.green,
                        ),
                      ),
                      ),
                    ),


                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: AutoSizeText(
                        "Actions:",
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:
                        GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ]
              ),
            ),

          Container(
            height: 700,
            width: 1700,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 193, 225, 153,),
            ),
            child: DataTable2(
              headingRowColor: WidgetStateColor.resolveWith((states) => Colors.white),
              headingRowHeight: 60,
              columnSpacing: 1,
              dividerThickness: 1,
              dataRowHeight: 100,
              minWidth: 1600,
              columns: const [
                DataColumn2(label: Text("ID", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1B5E20)))),
                DataColumn2(label: Text("Product", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1B5E20)))),
                DataColumn2(label: Text("Change Type", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1B5E20)))),
                DataColumn2(label: Text("Quantity Change", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1B5E20)))),
                DataColumn2(label: Text("Remarks", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1B5E20)))),
                DataColumn2(label: Text("Date", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1B5E20)))),
                DataColumn2(label: Text("", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1B5E20)))),
              ],
              rows: List.generate(Pro_product.length, (index) {
                final product = Pro_product[index];
                return DataRow(cells: [
                  DataCell(Row( mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: const EdgeInsets.only(right: 70 ), child: Text(Pro_product[index]['ID']!, style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20)),),Container(height: 80, width: 80, margin: EdgeInsets.only(right: 50), color: Colors.white, child: Image.asset(Pro_product[index]['image']!,))],)),
                  DataCell(Column( mainAxisAlignment: MainAxisAlignment.center, children: [ Text(Pro_product[index]['name']!, style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20)),])),
                  DataCell(Column( mainAxisAlignment: MainAxisAlignment.center, children: [ Text("Change me!", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15)),])),
                  DataCell(Text(Pro_product[index]['stock']!, style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15))),
                  DataCell(Text(" In Stock ", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15))),
                  DataCell(Text(DateFormat("yyyy-MM-dd").format(DateTime.now()))),
                  DataCell( Row( children: [ ElevatedButton( style: ElevatedButton.styleFrom( backgroundColor: Colors.white, shape: RoundedRectangleBorder( borderRadius: BorderRadius .zero,), ), onPressed: () {}, child: Text("Edit", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15)), ), ElevatedButton( style: ElevatedButton.styleFrom( backgroundColor: Colors.red, shape: RoundedRectangleBorder( borderRadius: BorderRadius .zero, ), ), onPressed: () {}, child: Text("Delete", style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15)),
                )
                ]
                )
                )
                ]
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
