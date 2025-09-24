import 'package:flutter/material.dart';

//Desktop pages
import 'Desktop/SignIn_D.dart';
import 'Desktop/LogIn_D.dart';
import 'Desktop/Main_D.dart';

//Mobile pages
import 'Mobile/Sign_in_Mobile.dart';
import 'Mobile/Log_in_Mobile.dart';

//Screen size restriction (Windows)
import 'package:flutter/foundation.dart';
import 'package:window_size/window_size.dart';
import 'Logo_Page.dart';
import 'dart:io';


//==============================================================================
//LOG IN PAGE
//==============================================================================
class Responsive_Log_In_Page extends StatelessWidget {
  const Responsive_Log_In_Page({super.key});

  @override
  Widget build(BuildContext context) {

    //Screen size restriction (windows, linux, mac)
    if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS ))  {
      setWindowMinSize(const Size(500, 700));  // Minimum size
    }


    return LayoutBuilder(
        builder: (context, constraints){

          if (constraints.maxHeight < 600){
          return const LogoPage();
          }

          else if (constraints.maxWidth > 600) {
            return const D_Log_In_Page();
          }

          else {
            return const M_Log_In_Page();
          }

        }
    );
  }
}

//==============================================================================
//SIGN IN PAGE
//==============================================================================
class Responsive_Sign_In_Page extends StatelessWidget {
  const Responsive_Sign_In_Page({super.key});

  @override
  Widget build(BuildContext context) {

    //Screen size restriction (Windows, Linux, Mac)
    if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS ))  {
      setWindowMinSize(const Size(500, 700));  // Minimum size
    }

    return LayoutBuilder(
        builder: (context, constraints){

          if (constraints.maxHeight < 600){
          return const LogoPage();
          }

          else if (constraints.maxWidth > 600) {
            return const SignIn_D();
          }

          else {
            return const M_Sign_In_Page();
          }

        },
    );
  }
}

//==============================================================================
//Dashboard
//==============================================================================
class Responsive_Dashboard_Page extends StatelessWidget {
  const Responsive_Dashboard_Page({super.key});

  @override
  Widget build(BuildContext context) {

    //Screen size restriction (windows, linux, mac)
    if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS ))  {
      setWindowMinSize(const Size(500, 700));  // Minimum size
    }


    return LayoutBuilder(
        builder: (context, constraints){

          if (constraints.maxHeight < 580){
            return const LogoPage();
          }

          else if (constraints.maxWidth > 600) {
            return const D_Dashboad_Page();
          }

          else {
            return const M_Log_In_Page();
          }

        }
    );
  }
}
