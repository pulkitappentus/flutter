import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;
import 'package:login_ui_demo/src/pages/hoofzy/hoofzy_app_theme.dart';
import 'package:login_ui_demo/src/pages/hoofzy/on_boarding_screens/data/pet_size_list.dart';
import 'package:login_ui_demo/src/pages/hoofzy/on_boarding_screens/list_view/pet_size_list_view.dart';
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

class Boarding6 extends StatefulWidget{

  const Boarding6({Key? key}) : super(key: key);

  @override
  _Boarding6State createState() => _Boarding6State();

}

class _Boarding6State extends State<Boarding6> with TickerProviderStateMixin{
  List<PetSizeList> petSizeList = PetSizeList.petSizeList;
  AnimationController? animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
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
                  'What is \nTommys Size?',
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
                      const Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(top: 18.0),
                          child: Text(
                            'Pet’s Size',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),

                      Container(
                        color: HotelAppTheme.buildLightTheme().backgroundColor,
                        child: ListView.builder(
                          itemCount: petSizeList.length,
                          padding: const EdgeInsets.only(top: 8),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context,int index){
                            final int count =
                            petSizeList.length > 10 ? 10 : petSizeList.length;
                            final Animation<double> animation =
                            Tween<double>(begin: 0.0, end: 1.0).animate(
                                CurvedAnimation(
                                    parent: animationController!,
                                    curve: Interval(
                                        (1 / count) * index, 1.0,
                                        curve: Curves.fastOutSlowIn)));
                            animationController?.forward();
                            return PetSizeListView(
                              callback: () {},
                              petSizeList: petSizeList[index],
                              animation: animation,
                              animationController: animationController!,
                            );
                          },
                        ),
                      ),

                      /*Padding(
                        padding: const EdgeInsets.only(top:8,left: 12.0,right: 12.0),
                        child: buildButton(
                          'Small (0-7kg)',
                          context,
                              () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  HoofzyPage(),
                            ),
                          ),
                        ),
                      ),*/
                   /*   Padding(
                        padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                        child: buildButton(
                          'Medium (7-18 kg)',
                          context,
                              () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  HoofzyPage(),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                        child: buildButton(
                          'Large (18-45 kg)',
                          context,
                              () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  HoofzyPage(),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                        child: buildButton(
                          'Gaint (45+ kg)',
                          context,
                              () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  HoofzyPage(),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 26,left: 18.0,right: 18.0),
                        child: nextButton(
                          'Next',
                          context,
                              () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  HoofzyPage(),
                            ),
                          ),
                        ),
                      ),*/

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

  Widget buildButton(String txt, BuildContext context, VoidCallback onTap) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: size.height / 16,
          decoration: BoxDecoration(
            color: Color(0xFFFF867A),
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





