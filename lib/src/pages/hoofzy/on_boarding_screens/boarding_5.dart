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

class Boarding5 extends StatefulWidget{

  const Boarding5({Key? key}) : super(key: key);

  @override
  _Boarding5State createState() => _Boarding5State();

}

class _Boarding5State extends State<Boarding5> {

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          //color: const Color(0xFFFFF4DB),
          //borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(colors: [Color(0xFF0E333D), Color(0xFF185262)],
              stops: [0.0, 1.0],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 14.0,bottom: 18),
                child: Text(
                  'What is \nTommy’s gender?',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Colors.white
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                height: 470,
                decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(35)
                ),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 86),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/hoofzy/male.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fill,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('Male'),
                                        )
                                      ],
                                    )),
                                Expanded(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/hoofzy/female.png',
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.fill,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('Female'),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0,right: 24.0,bottom: 40),
                        child: nextButton(
                          'Next',
                          context,
                              () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  HoofzyPage(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }

  Widget nextButton(String txt, BuildContext context, VoidCallback onTap) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: size.height / 14,
          decoration: BoxDecoration(
            color: Color(0xFFF6B9A9),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            txt,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 16.0,
              color: const Color(0xFFFFFFFF),
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }

}





