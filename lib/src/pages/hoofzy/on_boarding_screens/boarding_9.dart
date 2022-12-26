import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'package:login_ui_demo/src/pages/hoofzy/hoofzy_app_theme.dart';
import 'package:login_ui_demo/src/pages/hoofzy/tabIcon_data.dart';
import 'package:login_ui_demo/src/pages/hoofzy/training_program_data.dart';
import 'package:login_ui_demo/src/pages/hoofzy/training_program_list.dart';
import 'package:login_ui_demo/src/pages/sign_up.dart';
import '../../../hotel_booking/hotel_app_theme.dart';
import '../../../hotel_booking/hotel_list_view.dart';
import '../../../hotel_booking/model/hotel_list_data.dart';
import '../bottom_navigation_view/bottom_bar_view.dart';
import '../hoofzy_design_app_theme.dart';
import '../hoofzy_page.dart';
import '../knowledge_book_list_view.dart';
import '../knowledge_drama_list.dart';
import '../knowledge_drama_list_view.dart';
import '../knowledge_program_list.dart';

class Boarding9 extends StatefulWidget{

  const Boarding9({Key? key}) : super(key: key);

  @override
  _Boarding9State createState() => _Boarding9State();

}

class _Boarding9State extends State<Boarding9> {

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          //color: const Color(0xFFFFF4DB),
          //borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(colors: [Color(0xFF0E333D), Color(0xFF185262)],
              stops: [0.0, 1.0],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/hoofzy/setting_up.png',width: 308,height: 204,fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.only(top: 34),
              child: Text(
                'We’re Setting up ...',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: Colors.white
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top : 18,left: 12,right: 12),
              child: Text(
                'we are setting up your profile. your \ninformation will be saved for your  future \nactivities with Hoofgy',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Image.asset('assets/hoofzy/paws_white.png',width: 64,height: 62,fit: BoxFit.fill),
            ),
          ],
        ),
      ),
    );
  }

}





