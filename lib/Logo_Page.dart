import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [

              //background image
              Positioned.fill(
                child: Image.asset(
                  'assets/App_Icon.png',
                  fit: BoxFit.fill,
                ),
              ),

              //
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Too Small!',
                  style: GoogleFonts.outfit(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),

            ],
          );
        }
    );
  }
}