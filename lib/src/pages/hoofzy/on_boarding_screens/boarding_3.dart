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

class Boarding3 extends StatefulWidget{

  const Boarding3({Key? key}) : super(key: key);

  @override
  _Boarding3State createState() => _Boarding3State();

}

class _Boarding3State extends State<Boarding3> {
  var isChecked = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                  'What is \nTommy’s breed?',
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
                    children: [
                      searchTextField(size),

                      Expanded(child: Row(
                        children: [
                          checkBox(),
                          const Text(
                            'Affenpinscher',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,
                              color: Colors.black
                          ),),
                        ],

                      )),

                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left:18,right:18, bottom: 28.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            nextButton(
                              'Next',
                              context,
                                  () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>  HoofzyPage(),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                      )
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
  Widget searchTextField(Size size) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0,right: 18,top: 26),
      child: Container(
        alignment: Alignment.center,
        height: size.height / 16,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            width: 1.0,
            color: const Color(0xFFEFEFEF),
          ),
        ),
        child: TextField(
          style: GoogleFonts.inter(
            fontSize: 16.0,
            color: const Color(0xFF000000),
          ),
          maxLines: 1,
          cursorColor: const Color(0xFF000000),
          decoration: InputDecoration(
              labelText: 'Search',
              labelStyle: GoogleFonts.inter(
                fontSize: 16.0,
                color: const Color(0xFF969AA8),
              )
          ),
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

  checkBox() {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color(0xFFF6B9A9);
    }
    return Container(
      child: Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }

}





